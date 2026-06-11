import db from './database.js';
import {
  Usuario,
  Interesse,
  UsuarioInteresse,
} from './modelIndex.js';

async function seed() {
  await db.authenticate();
  await db.sync();

  await Usuario.bulkCreate(
    [
      {
        id: 1,
        nome: 'Ana Silva',
        email: 'ana@example.com',
        senha: 'senha123',
        data_nascimento: '1998-04-12',
        genero: 'feminino',
        bio: 'Gosta de tecnologia e musica.',
        criado_em: new Date(),
      },
      {
        id: 2,
        nome: 'Bruno Costa',
        email: 'bruno@example.com',
        senha: 'senha123',
        data_nascimento: '1996-09-25',
        genero: 'masculino',
        bio: 'Curte trilhas e cinema.',
        criado_em: new Date(),
      },
    ],
    { ignoreDuplicates: true }
  );

  await Interesse.bulkCreate(
    [
      { id: 1, nome: 'tecnologia' },
      { id: 2, nome: 'musica' },
    ],
    { ignoreDuplicates: true }
  );

  await UsuarioInteresse.bulkCreate(
    [
      { usuario_id: 1, interesse_id: 1 },
      { usuario_id: 1, interesse_id: 2 },
      { usuario_id: 2, interesse_id: 1 },
    ],
    { ignoreDuplicates: true }
  );
}

try {
  await seed();
  console.log('Seed executada com sucesso.');
} catch (error) {
  console.error('Erro ao executar seed:', error);
  process.exitCode = 1;
} finally {
  await db.close();
}
