const {
    Connection,
    PublicKey,
    clusterApiUrl,
    keyPair,
    LAMPORTS_PER_SOL
} = require("@solana/web3.js")

const wallet = new keyPair()

const publickey = wallet._keypair.publickey

const secretKey = wallet._keypair.SecretKey

console.log(publickey)
console.log(secretKey)