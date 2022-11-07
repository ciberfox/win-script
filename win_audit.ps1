Set-StorageSubSystem -FriendlyName  -VirtualDiskRepairQueueDepth

#Queue Depth 1 = very low speed

#Queue Depth 2 = low speed

#Queue Depth 4 = medium speed

#Queue Depth 8 = high speed

#Queue Depth 16 = very high speed




Get-StorageSubSystem | Select-Object FriendlyName, VirtualDiskRepairQueueDepth
