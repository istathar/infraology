{-# LANGUAGE GADTs #-}
{-# LANGUAGE StandaloneDeriving #-}


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
monitor1 = Server 1 CephMonitor
monitor2 = Server 2 CephMonitor
monitor3 = Server 3 CephMonitor

storage1 :: Server
storage1 = Server 1 CephObjectStorage
storage2 = Server 2 CephObjectStorage
storage3 = Server 3 CephObjectStorage
storage4 = Server 4 CephObjectStorage
storage5 = Server 5 CephObjectStorage
storage6 = Server 6 CephObjectStorage
storage7 = Server 7 CephObjectStorage
storage8 = Server 8 CephObjectStorage
storage9 = Server 9 CephObjectStorage
storage10 = Server 10 CephObjectStorage
storage11 = Server 11 CephObjectStorage
storage12 = Server 12 CephObjectStorage
storage13 = Server 13 CephObjectStorage
storage14 = Server 14 CephObjectStorage
storage15 = Server 15 CephObjectStorage

data CephCluster = CephMonitor | CephObjectStorage | CephMetadataServer
    deriving Show

instance Role CephCluster where
    role x = show x

