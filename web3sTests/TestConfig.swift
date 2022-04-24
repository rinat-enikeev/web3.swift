//
//  TestConfig.swift
//  web3swiftTests
//
//  Created by Matt Marshall on 20/03/2018.
//  Copyright © 2018 Argent Labs Limited. All rights reserved.
//

import Foundation

struct TestConfig {
    // This is the proxy URL for connecting to the Blockchain. For testing we usually use the Ropsten network on Infura. Using free tier, so might hit rate limits
    static let clientUrl = "https://ropsten.infura.io/v3/b2f4b3f635d8425c96854c3d28ba6bb0"
    
    // Same for mainnet
    static let mainnetClientUrl = "https://mainnet.infura.io/v3/b2f4b3f635d8425c96854c3d28ba6bb0"
    
    // An EOA with some Ether, so that we can test sending transactions (pay for gas)
    static let privateKey = "0xef4e182ae2cf32192d2a62c1159c8c4f7f2d658c303d0dfca5791a205456a132"
    
    // This is the expected public key (address) from the above private key
    static let publicKey = "0x719561fee351F7aC6560D0302aE415FfBEEc0B51"
    
    // A test ERC20 token contract (BOKKY)
    static let erc20Contract = "0x583cbBb8a8443B38aBcC0c956beCe47340ea1367"
    
    // A test ERC721 token contract (GAT)
    static let erc721Contract = "0x6F2443D87F0F6Cb6aa47b0C6a310468163871E94"
    
    // ERC165 compliant contract
    static let erc165Contract = "0x5c007a1d8051dfda60b3692008b9e10731b67fde"

    // A test ERC20 token contract (BOKKY) bytecode
    static let erc20Bytecode =
    """
    606060405234610000576040516108ee3803806108ee83398101604090815281516020830151918301519083019291909101905b8260009080519060200190828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061007f57805160ff19168380011785556100ac565b828001600101855582156100ac579182015b828111156100ac578251825591602001919060010190610091565b5b506100cd9291505b808211156100c957600081556001016100b5565b5090565b50508160019080519060200190828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061011b57805160ff1916838001178555610148565b82800160010185558215610148579182015b8281111561014857825182559160200191906001019061012d565b5b506101699291505b808211156100c957600081556001016100b5565b5090565b50506002805460ff19167f0100000000000000000000000000000000000000000000000000000000000000838102041761010060a860020a0319166101006c0100000000000000000000000033810204021790555b5050505b61071e806101d06000396000f36060604052361561008d5760e060020a600035046306fdde0381146100ca578063095ea7b31461014557806318160ddd1461016c57806323b872dd1461018b578063313ce567146101b557806370a08231146101d85780638da5cb5b146101fa57806395d89b4114610223578063a9059cbb1461029e578063dd62ed3e146102c5578063f4206706146102ea575b6100c85b60003411156100c5576005805434908101909155600160a060020a0333166000908152600360205260409020805490910190555b5b565b005b34610000576100d761030e565b60405180806020018281038252838181518152602001915080519060200190808383829060006004602084601f0104600302600f01f150905090810190601f1680156101375780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b346100005761015860043560243561039c565b604080519115158252519081900360200190f35b3461000057610179610407565b60408051918252519081900360200190f35b346100005761015860043560243560443561040e565b604080519115158252519081900360200190f35b34610000576101c2610508565b6040805160ff9092168252519081900360200190f35b3461000057610179600435610511565b60408051918252519081900360200190f35b3461000057610207610530565b60408051600160a060020a039092168252519081900360200190f35b34610000576100d7610544565b60405180806020018281038252838181518152602001915080519060200190808383829060006004602084601f0104600302600f01f150905090810190601f1680156101375780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34610000576101586004356024356105d1565b604080519115158252519081900360200190f35b3461000057610179600435602435610681565b60408051918252519081900360200190f35b34610000576101586004356106ae565b604080519115158252519081900360200190f35b6000805460408051602060026001851615610100026000190190941693909304601f810184900484028201840190925281815292918301828280156103945780601f1061036957610100808354040283529160200191610394565b820191906000526020600020905b81548152906001019060200180831161037757829003601f168201915b505050505081565b600160a060020a03338116600081815260046020908152604080832094871680845294825280832086905580518681529051929493927f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925929181900390910190a35060015b92915050565b6005545b90565b600160a060020a03831660009081526003602052604081205482901080159061045e5750600160a060020a0380851660009081526004602090815260408083203390941683529290522054829010155b801561046a5750600082115b156104fc57600160a060020a03808416600081815260036020908152604080832080548801905588851680845281842080548990039055600483528184203390961684529482529182902080548790039055815186815291519293927fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef9281900390910190a350600161050056610500565b5060005b5b9392505050565b60025460ff1681565b600160a060020a0381166000908152600360205260409020545b919050565b6002546101009004600160a060020a031681565b60018054604080516020600284861615610100026000190190941693909304601f810184900484028201840190925281815292918301828280156103945780601f1061036957610100808354040283529160200191610394565b820191906000526020600020905b81548152906001019060200180831161037757829003601f168201915b505050505081565b600160a060020a0333166000908152600360205260408120548290108015906105fa5750600082115b1561067257600160a060020a03338116600081815260036020908152604080832080548890039055938716808352918490208054870190558351868152935191937fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef929081900390910190a350600161040156610401565b506000610401565b5b92915050565b600160a060020a038083166000908152600460209081526040808320938516835292905220545b92915050565b60025460009033600160a060020a0390811661010090920416146106d157610000565b600160a060020a0330163182901061052b57600254604051610100909104600160a060020a0316906108fc8415029084906000818181858888f19350505050905061052b565b5b5b91905056
    """
}
