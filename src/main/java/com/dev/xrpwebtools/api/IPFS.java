package com.dev.xrpwebtools.api;

import io.ipfs.api.MerkleNode;
import io.ipfs.api.NamedStreamable;
import io.ipfs.multihash.Multihash;

import java.io.File;
import java.io.IOException;

public interface IPFS {
    String IPFS_MULTIADDRESS = System.getenv("IPFS_Multiaddress");

    static Multihash createIPFS(byte[] data, String... path) throws IOException {
        io.ipfs.api.IPFS ipfs = new io.ipfs.api.IPFS(IPFS_MULTIADDRESS);
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
