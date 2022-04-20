const {
    Connection,
    PublicKey,
    clusterApiUrl,
    Keypair,
    LAMPORTS_PER_SOL
} = require("@solana/web3.js")

const wallet = new Keypair()

const publickey = wallet._keypair.publickey

const secretkey = wallet._keypair.secretkey

console.log(publickey)
console.log(secretkey)