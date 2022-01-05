pragma solidty >=0.7.0 <0.9.0;

library CyrptoSuite {
    function splitSignature(bytes memory sig) internal pure returns(uint8 v, bytes32 r, bytes32 s) {
        require(sig.length == 65);
    }
}