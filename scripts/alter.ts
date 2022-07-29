import { runMSSQL } from './util'

async function main() {
  await runMSSQL({
    connectionString: process.env.DATABASE_SETUP_URL!,
    databaseName: 'reprod'
  }, 'alter.sql')

  console.log('Altered database')
}

main()
  .catch(e => {
    console.log('Altering database failed!')
    console.error(e)
  })
