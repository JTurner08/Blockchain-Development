const {
    Connection,
    PublicKey,
    clusterApiUrl,
    keyPair,
    LAMPORTS_PER_SOL
} = require("@solana/web3.js")

const wallet = new keyPair()

const publickey = wallet._keypair.publickey

const SecretKey = wallet._keypair.SecretKey

console.log(Publickey)
console.log(SecretKey)