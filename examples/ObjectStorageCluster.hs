{-# LANGUAGE GADTs #-}
{-# LANGUAGE StandaloneDeriving #-}

module ObjectStorageCluster where


import Infrastructure.Topology


lax4 :: DataCenter
lax4 = Site "LAX4" []

syd3 :: DataCenter
syd3 = Site "SYD3" [rack1]

rack1 :: Rack
rack1 = Rack 1 [monitor1, storage1, storage2, storage3, storage4, storage5]

rack2 = Rack 2 [monitor2, storage6, storage7, storage8, storage9, storage10]

rack3 = Rack 3 [monitor3, storage11, storage12, storage13, storage14, storage15]

monitor1 :: Server
monitor1 = Server (Monitor 1)
monitor2 = Server (Monitor 2)
monitor3 = Server (Monitor 3)

storage1 :: Server
storage1 = Server (ObjectStorage 1)
storage2 = Server (ObjectStorage 2)
storage3 = Server (ObjectStorage 3)
storage4 = Server (ObjectStorage 4)
storage5 = Server (ObjectStorage 5)
storage6 = Server (ObjectStorage 6)
storage7 = Server (ObjectStorage 7)
storage8 = Server (ObjectStorage 8)
storage9 = Server (ObjectStorage 9)
storage10 = Server (ObjectStorage 10)
storage11 = Server (ObjectStorage 11)
storage12 = Server (ObjectStorage 12)
storage13 = Server (ObjectStorage 13)
storage14 = Server (ObjectStorage 14)
storage15 = Server (ObjectStorage 15)

data CephCluster = Monitor Int | ObjectStorage Int | MetadataServer Int
    deriving Show

instance Role CephCluster where
    role x = show x

instance Host CephCluster where
    hostname x = case x of
        (Monitor n)        -> "monitor" ++ show n
        (ObjectStorage n)  -> "storage" ++ show n
        (MetadataServer n) -> "metadata" ++ show n

