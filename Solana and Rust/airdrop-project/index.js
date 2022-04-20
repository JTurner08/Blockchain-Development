const {
    Connection,
    PublicKey,
    clusterApiUrl,
    Keypair,
    LAMPORTS_PER_SOL,
} = require("@solana/web3.js")
 
const wallet = new Keypair()
 
const publicKey = new PublicKey(wallet._keypair.publicKey)
const secretKey = wallet._keypair.secretKey
 
const getWalletBalance = async() => {
    try {
        const Connection = new Connection(clusterApiUrl('devnet'), 'confirmed')
        const WalletBalance = await Connection.getBalance(publicKey)
        console.log('wallet balance is ${walletBalance}')
    }catch(err) {
        console.error(err)
    }
}
const main = async() => {
    await getWalletBalance()
}
main()