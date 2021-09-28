package com.dev.xrpwebtools.impl;

import io.ipfs.api.IPFS;
import io.ipfs.api.MerkleNode;
import io.ipfs.api.NamedStreamable;
import io.ipfs.multihash.Multihash;

import java.io.File;
import java.io.IOException;

public class IPFSImpl {
    static IPFS ipfs;

    public IPFSImpl() {
        ipfs = new IPFS(System.getenv("IPFS_Multiaddress"));
    }

    public static Multihash createIPFS(byte[] data, String... path) throws IOException {
        MerkleNode addResult;
        ipfs.timeout(1);
        if (data != null) {
            NamedStreamable.ByteArrayWrapper byteArrayWrapper = new NamedStreamable.ByteArrayWrapper(" ", data);
            addResult = ipfs.add(byteArrayWrapper).get(0);
        } else {
            NamedStreamable.FileWrapper fileWrapper = new NamedStreamable.FileWrapper(new File(path[0]));
            addResult = ipfs.add(fileWrapper).get(0);
        }
        return addResult.hash;
    }
}
