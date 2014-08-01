.class public Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
.super Lorg/cybergarage/util/ThreadCore;
.source "ContentDirectory.java"

# interfaces
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# static fields
.field public static final BROWSE:Ljava/lang/String; = "Browse"

.field public static final BROWSEDIRECTCHILDREN:Ljava/lang/String; = "BrowseDirectChildren"

.field public static final BROWSEFLAG:Ljava/lang/String; = "BrowseFlag"

.field public static final BROWSEMETADATA:Ljava/lang/String; = "BrowseMetadata"

.field public static final COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final CONTAINERID:Ljava/lang/String; = "ContainerID"

.field public static final CONTAINERUPDATEIDS:Ljava/lang/String; = "ContainerUpdateIDs"

.field public static final CONTENT_EXPORT_URI:Ljava/lang/String; = "/ExportContent"

.field public static final CONTENT_ID:Ljava/lang/String; = "id"

.field public static final CONTENT_IMPORT_URI:Ljava/lang/String; = "/ImportContent"

.field public static final CREATEOBJECT:Ljava/lang/String; = "CreateObject"

.field public static final CREATEREFERENCE:Ljava/lang/String; = "CreateReference"

.field public static final CURRENTTAGVALUE:Ljava/lang/String; = "CurrentTagValue"

.field private static final DEFAULT_CONTENTUPDATE_INTERVAL:I = 0xea60

.field private static final DEFAULT_SYSTEMUPDATEID_INTERVAL:I = 0x7d0

.field public static final DELETERESOURCE:Ljava/lang/String; = "DeleteResource"

.field public static final DESTINATIONURI:Ljava/lang/String; = "DestinationURI"

.field public static final DESTROYOBJECT:Ljava/lang/String; = "DestroyObject"

.field protected static final DIDL_WRAPPER:Ljava/lang/String; = "<DIDL-Lite xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"><item id=\"\" restricted=\"0\">%s</item></DIDL-Lite>"

.field public static final ELEMENTS:Ljava/lang/String; = "Elements"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final EXPORTRESOURCE:Ljava/lang/String; = "ExportResource"

.field public static final FILTER:Ljava/lang/String; = "Filter"

.field public static final GETFEATURELIST:Ljava/lang/String; = "GetFeatureList"

.field public static final GETSEARCHCAPABILITIES:Ljava/lang/String; = "GetSearchCapabilities"

.field public static final GETSORTCAPABILITIES:Ljava/lang/String; = "GetSortCapabilities"

.field public static final GETSYSTEMUPDATEID:Ljava/lang/String; = "GetSystemUpdateID"

.field public static final GETTRANSFERPROGRESS:Ljava/lang/String; = "GetTransferProgress"

.field public static final ID:Ljava/lang/String; = "Id"

.field public static final IMPORTRESOURCE:Ljava/lang/String; = "ImportResource"

.field public static final IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field private static final METADATA_CONTAINER:Ljava/lang/String; = "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\"> <container id=\"1111\" searchable=\"1\" parentID=\"0\" restricted=\"0\"><dc:title>testDir</dc:title><upnp:class>object.container</upnp:class></container></DIDL-Lite>"

.field public static final MOVEOBJECT:Ljava/lang/String; = "MoveObject"

.field public static final NEWID:Ljava/lang/String; = "NewID"

.field public static final NEWTAGVALUE:Ljava/lang/String; = "NewTagValue"

.field public static final NUMBERRETURNED:Ljava/lang/String; = "NumberReturned"

.field public static final OBJECTID:Ljava/lang/String; = "ObjectID"

.field public static final REQUESTEDCOUNT:Ljava/lang/String; = "RequestedCount"

.field public static final RESOURCEURI:Ljava/lang/String; = "ResourceURI"

.field public static final RESULT:Ljava/lang/String; = "Result"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <actionList>\n      <action>\n         <name>ExportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>StopTransferResource</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DestroyObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DeleteResource</name>\n         <argumentList>\n            <argument>\n               <name>ResourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>UpdateObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>CurrentTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Browse</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>BrowseFlag</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_BrowseFlag</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetTransferProgress</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferStatus</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferStatus</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferLength</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferLength</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferTotal</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferTotal</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSearchCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SearchCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SearchCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateObject</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Elements</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Search</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SearchCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SearchCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSortCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SortCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SortCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>ImportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateReference</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSystemUpdateID</name>\n         <argumentList>\n            <argument>\n              <name>Id</name>\n               <direction>out</direction>\n               <relatedStateVariable>SystemUpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n\t   <action>\t\t  <name>GetFeatureList</name>\t\t  <argumentList>\t\t  \t<argument>\t\t\t\t<name>FeatureList</name>\t\t\t\t<direction>out</direction>\t\t\t\t<relatedStateVariable>FeatureList</relatedStateVariable>\t\t\t</argument>\t\t  </argumentList>\t   </action>   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SortCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferLength</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>TransferIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_UpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SearchCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Filter</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>ContainerUpdateIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Result</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Index</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n\t   <stateVariable>\t\t  <name>FeatureList</name>\t\t  <sendEventsAttribute>no</sendEventsAttribute>\t\t  <dataType>string</dataType>\t   </stateVariable>      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TagValueList</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_URI</name>\n         <dataType>uri</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ObjectID</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SortCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SearchCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Count</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_BrowseFlag</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>BrowseMetadata</allowedValue>\n            <allowedValue>BrowseDirectChildren</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SystemUpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>COMPLETED</allowedValue>\n            <allowedValue>ERROR</allowedValue>\n            <allowedValue>IN_PROGRESS</allowedValue>\n            <allowedValue>STOPPED</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferTotal</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

.field public static final SEARCH:Ljava/lang/String; = "Search"

.field public static final SEARCHCAPABILITIES:Ljava/lang/String; = "SearchCapabilities"

.field public static final SEARCHCAPS:Ljava/lang/String; = "SearchCaps"

.field public static final SEARCHCRITERIA:Ljava/lang/String; = "SearchCriteria"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:ContentDirectory:1"

.field public static final SORTCAPABILITIES:Ljava/lang/String; = "SortCapabilities"

.field public static final SORTCAPS:Ljava/lang/String; = "SortCaps"

.field public static final SORTCRITERIA:Ljava/lang/String; = "SortCriteria"

.field public static final SOURCEURI:Ljava/lang/String; = "SourceURI"

.field public static final STARTINGINDEX:Ljava/lang/String; = "StartingIndex"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STOPTRANSFERRESOURCE:Ljava/lang/String; = "StopTransferResource"

.field public static final SYSTEMUPDATEID:Ljava/lang/String; = "SystemUpdateID"

.field public static final TOTALMATCHES:Ljava/lang/String; = "TotalMatches"

.field public static final TRANSFERID:Ljava/lang/String; = "TransferID"

.field public static final TRANSFERIDS:Ljava/lang/String; = "TransferIDs"

.field public static final TRANSFERLENGTH:Ljava/lang/String; = "TransferLength"

.field public static final TRANSFERSTATUS:Ljava/lang/String; = "TransferStatus"

.field public static final TRANSFERTOTAL:Ljava/lang/String; = "TransferTotal"

.field public static final UPDATEID:Ljava/lang/String; = "UpdateID"

.field public static final UPDATEOBJECT:Ljava/lang/String; = "UpdateObject"


# instance fields
.field private containerUpdateIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contentUpdateInterval:J

.field private dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

.field private formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

.field private maxContentID:I

.field private mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

.field private searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

.field private sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

.field private systemUpdateID:I

.field private systemUpdateIDInterval:J


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 2
    .parameter "mserver"

    .prologue
    const/4 v1, 0x0

    .line 544
    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    .line 578
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mutex:Lorg/cybergarage/util/Mutex;

    .line 659
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    .line 699
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    .line 747
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    .line 794
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->containerUpdateIds:Ljava/util/HashMap;

    .line 808
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    .line 545
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    .line 547
    iput v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I

    .line 548
    iput v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I

    .line 550
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->setSystemUpdateInterval(J)V

    .line 551
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->setContentUpdateInterval(J)V

    .line 553
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initRootNode()V

    .line 554
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initSortCaps()V

    .line 555
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->initSearchCaps()V

    .line 556
    return-void
.end method

.method private browseActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 1244
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->isMetadata()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1245
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->browseMetadataActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z

    move-result v0

    .line 1248
    :goto_0
    return v0

    .line 1246
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->isDirectChildren()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1247
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->browseDirectChildrenActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z

    move-result v0

    goto :goto_0

    .line 1248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private browseDirectChildrenActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z
    .locals 20
    .parameter "action"

    .prologue
    .line 1352
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getObjectID()Ljava/lang/String;

    move-result-object v12

    .line 1353
    .local v12, objID:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v10

    .line 1354
    .local v10, node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1355
    :cond_0
    const/16 v19, 0x0

    .line 1400
    :goto_0
    return v19

    :cond_1
    move-object v3, v10

    .line 1357
    check-cast v3, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 1358
    .local v3, containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    new-instance v4, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v4}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    .line 1359
    .local v4, contentNodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v8

    .line 1360
    .local v8, nChildNodes:I
    const/4 v7, 0x0

    .local v7, n:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1361
    invoke-virtual {v3, v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v2

    .line 1363
    .local v2, cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    instance-of v0, v2, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1364
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v9

    .line 1365
    .local v9, nllength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v9, :cond_2

    .line 1366
    new-instance v15, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    invoke-direct {v15}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;-><init>()V

    .line 1367
    .local v15, rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2, v6}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->set(Lorg/cybergarage/xml/Node;)V

    move-object/from16 v19, v2

    .line 1368
    check-cast v19, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V

    .line 1365
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1371
    .end local v6           #i:I
    .end local v9           #nllength:I
    .end local v15           #rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1360
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1375
    .end local v2           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getSortCriteria()Ljava/lang/String;

    move-result-object v16

    .line 1376
    .local v16, sortCriteria:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortContentNodeList(Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    move-result-object v17

    .line 1378
    .local v17, sortedContentNodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getStartingIndex()I

    move-result v18

    .line 1379
    .local v18, startingIndex:I
    if-gtz v18, :cond_4

    .line 1380
    const/16 v18, 0x0

    .line 1381
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getRequestedCount()I

    move-result v13

    .line 1382
    .local v13, requestedCount:I
    if-nez v13, :cond_5

    .line 1383
    move v13, v8

    .line 1385
    :cond_5
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 1386
    .local v5, didlLite:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    const/4 v11, 0x0

    .line 1387
    .local v11, numberReturned:I
    move/from16 v7, v18

    :goto_3
    if-ge v7, v8, :cond_6

    if-ge v11, v13, :cond_6

    .line 1388
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v2

    .line 1389
    .restart local v2       #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v5, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 1390
    invoke-virtual {v2, v12}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 1391
    add-int/lit8 v11, v11, 0x1

    .line 1387
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1394
    .end local v2           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_6
    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1395
    .local v14, result:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setResult(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setNumberReturned(I)V

    .line 1397
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setTotalMaches(I)V

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->setUpdateID(I)V

    .line 1400
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method private browseMetadataActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z
    .locals 7
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    .line 1257
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getObjectID()Ljava/lang/String;

    move-result-object v2

    .line 1258
    .local v2, objID:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 1259
    .local v1, node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v1, :cond_1

    .line 1260
    const/4 v4, 0x0

    .line 1274
    :cond_0
    :goto_0
    return v4

    .line 1262
    :cond_1
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 1263
    .local v0, didlLite:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 1264
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, result:Ljava/lang/String;
    const-string v5, "Result"

    invoke-virtual {p1, v5, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v5, "NumberReturned"

    invoke-virtual {p1, v5, v4}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1268
    const-string v5, "TotalMatches"

    invoke-virtual {p1, v5, v4}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1269
    const-string v5, "UpdateID"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1271
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1272
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->print()V

    goto :goto_0
.end method

.method private createContainerNode()Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    .locals 1

    .prologue
    .line 651
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 652
    .local v0, node:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    return-object v0
.end method

.method private createObject(Lorg/cybergarage/upnp/Action;)Z
    .locals 11
    .parameter "action"

    .prologue
    const/4 v8, 0x0

    .line 944
    new-instance v4, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    invoke-direct {v4}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .line 945
    .local v4, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    const-string v9, "ContainerID"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, cid:Ljava/lang/String;
    const-string v9, "Elements"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, meta:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 949
    .local v6, nd:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 950
    .local v1, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v1, :cond_0

    .line 951
    const/16 v9, 0x2c6

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    .line 952
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 954
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v9

    const-string v10, "upnp:class"

    invoke-virtual {v9, v10}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "container"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 955
    new-instance v7, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-direct {v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 958
    .local v7, sn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 959
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContentID()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 960
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v1           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v1, v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 961
    const-string v9, "ObjectID"

    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 963
    .local v2, didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v2, v7}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 964
    const-string v9, "Result"

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 972
    .end local v2           #didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    .end local v7           #sn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 973
    const/4 v8, 0x1

    .end local v6           #nd:Lorg/cybergarage/xml/Node;
    :goto_1
    return v8

    .line 957
    .restart local v1       #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .restart local v6       #nd:Lorg/cybergarage/xml/Node;
    :cond_2
    :try_start_1
    new-instance v7, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    invoke-direct {v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v7       #sn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    goto :goto_0

    .line 966
    .end local v1           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v6           #nd:Lorg/cybergarage/xml/Node;
    .end local v7           #sn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :catch_0
    move-exception v3

    .line 967
    .local v3, e:Lorg/cybergarage/xml/ParserException;
    const/16 v9, 0x194

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto :goto_1

    .line 969
    .end local v3           #e:Lorg/cybergarage/xml/ParserException;
    :catch_1
    move-exception v3

    .line 970
    .local v3, e:Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method private deleteResource(Lorg/cybergarage/upnp/Action;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 1228
    const-string v2, "ObjectID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1230
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v2, 0x1

    return v2
.end method

.method private destroyObject(Lorg/cybergarage/upnp/Action;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 1083
    const-string v2, "ObjectID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1085
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 1087
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 1090
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1089
    :cond_0
    const/16 v2, 0x2bd

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto :goto_0

    .line 1090
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDirectoryList()Lorg/cybergarage/upnp/std/av/server/DirectoryList;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    return-object v0
.end method

.method private getDlnaProtocolOpFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mime"

    .prologue
    .line 1719
    if-eqz p1, :cond_1

    .line 1720
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    const-string v0, ":*"

    .line 1726
    :goto_0
    return-object v0

    .line 1723
    :cond_0
    const-string v0, ":DLNA.ORG_OP=01"

    goto :goto_0

    .line 1726
    :cond_1
    const-string v0, ":*"

    goto :goto_0
.end method

.method private getFeatureList(Lorg/cybergarage/upnp/Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 941
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized getNextContentID()I
    .locals 1

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I

    .line 615
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->maxContentID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSearchCapabilities()Ljava/lang/String;
    .locals 7

    .prologue
    .line 783
    const-string v3, ""

    .line 784
    .local v3, searchCapsStr:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNSearchCaps()I

    move-result v1

    .line 785
    .local v1, nSearchCaps:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 786
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCap(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v2

    .line 787
    .local v2, searchCap:Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/SearchCap;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, type:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 789
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 790
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    .end local v2           #searchCap:Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getSearchContentList(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;)I
    .locals 5
    .parameter "node"
    .parameter "searchCriList"
    .parameter "searchCapList"
    .parameter "contentNodeList"

    .prologue
    .line 1442
    invoke-virtual {p2, p1, p3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1443
    invoke-virtual {p4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1445
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v2

    .line 1446
    .local v2, nChildNodes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1447
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1448
    .local v0, cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1449
    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v0           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchContentList(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;)I

    .line 1446
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1451
    :cond_2
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v3

    return v3
.end method

.method private getSearchCriteriaList(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    .locals 9
    .parameter "searchStr"

    .prologue
    const/4 v8, 0x1

    .line 1409
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;-><init>()V

    .line 1411
    .local v5, searchList:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    if-nez p1, :cond_1

    .line 1437
    :cond_0
    return-object v5

    .line 1413
    :cond_1
    const-string v7, "*"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1416
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, " \t\n\u000c\r"

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    .local v4, searchCriTokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 1418
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1419
    .local v2, prop:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1421
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, binOp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1424
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1425
    .local v6, value:Ljava/lang/String;
    const-string v7, "\""

    invoke-static {v6, v7}, Lorg/cybergarage/util/StringUtil;->trim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1426
    const-string v1, ""

    .line 1427
    .local v1, logOp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-ne v7, v8, :cond_2

    .line 1428
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1429
    :cond_2
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;-><init>()V

    .line 1430
    .local v3, searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSortCapabilities()Ljava/lang/String;
    .locals 7

    .prologue
    .line 731
    const-string v3, ""

    .line 732
    .local v3, sortCapsStr:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNSortCaps()I

    move-result v1

    .line 733
    .local v1, nSortCaps:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 734
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v2

    .line 735
    .local v2, sortCap:Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, type:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v2           #sortCap:Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getSortCriteriaArray(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    .locals 4
    .parameter "sortCriteria"

    .prologue
    .line 1302
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;-><init>()V

    .line 1303
    .local v0, sortCriList:Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ", "

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1305
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1308
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getUpdate(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;)Ljava/lang/String;
    .locals 4
    .parameter "cn"

    .prologue
    .line 797
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->containerUpdateIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 798
    .local v0, rc:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getUpdateId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 799
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->containerUpdateIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getUpdateId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getUpdateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private importResource(Lorg/cybergarage/upnp/Action;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 1233
    const-string v2, "ObjectID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1235
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v2, 0x1

    return v2
.end method

.method private initRootNode()V
    .locals 1

    .prologue
    .line 636
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    .line 637
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 638
    return-void
.end method

.method private initSearchCaps()V
    .locals 1

    .prologue
    .line 777
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/search/IdSearchCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/search/IdSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSearchCap(Lorg/cybergarage/upnp/std/av/server/object/SearchCap;)Z

    .line 778
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/search/TitleSearchCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/search/TitleSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSearchCap(Lorg/cybergarage/upnp/std/av/server/object/SearchCap;)Z

    .line 779
    return-void
.end method

.method private initSortCaps()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/sort/UPnPClassSortCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/sort/UPnPClassSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z

    .line 725
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/sort/DCTitleSortCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/sort/DCTitleSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z

    .line 726
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/sort/DCDateSortCap;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/sort/DCDateSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z

    .line 727
    return-void
.end method

.method private moveObject(Lorg/cybergarage/upnp/Action;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 1223
    const-string v2, "ObjectID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1225
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v2, 0x1

    return v2
.end method

.method private static parseFragmentXMLCSV(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "s"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1103
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v4, v8

    aput-object v10, v4, v9

    .line 1104
    .local v4, result:[Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-object v4

    .line 1106
    :cond_1
    const/4 v3, -0x1

    .line 1107
    .local v3, pos:I
    const/4 v0, 0x0

    .line 1108
    .local v0, bracketCounter:I
    const/4 v5, 0x0

    .line 1109
    .local v5, tagCounter:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 1110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1111
    .local v1, c:C
    const/16 v6, 0x3c

    if-ne v1, v6, :cond_2

    .line 1112
    add-int/lit8 v0, v0, 0x1

    .line 1113
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_5

    .line 1114
    add-int/lit8 v5, v5, -0x1

    .line 1118
    :cond_2
    :goto_2
    const/16 v6, 0x3e

    if-ne v1, v6, :cond_3

    .line 1119
    add-int/lit8 v0, v0, -0x1

    .line 1120
    :cond_3
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_6

    if-nez v0, :cond_6

    if-nez v5, :cond_6

    .line 1121
    move v3, v2

    .line 1125
    .end local v1           #c:C
    :cond_4
    if-ltz v3, :cond_7

    .line 1126
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 1127
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    goto :goto_0

    .line 1116
    .restart local v1       #c:C
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1109
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1129
    .end local v1           #c:C
    :cond_7
    aput-object p0, v4, v8

    .line 1130
    aput-object v10, v4, v9

    goto :goto_0
.end method

.method public static parseProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Property;
    .locals 6
    .parameter "s"

    .prologue
    .line 1146
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1147
    :cond_0
    const/4 v1, 0x0

    .line 1155
    :goto_0
    return-object v1

    .line 1149
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1150
    .local v2, root:Lorg/cybergarage/xml/Node;
    new-instance v1, Lorg/cybergarage/upnp/event/Property;

    invoke-direct {v1}, Lorg/cybergarage/upnp/event/Property;-><init>()V

    .line 1151
    .local v1, prop:Lorg/cybergarage/upnp/event/Property;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1152
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/event/Property;->setName(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/event/Property;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    .end local v1           #prop:Lorg/cybergarage/upnp/event/Property;
    .end local v2           #root:Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v0

    .line 1157
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error formating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static parseXMLCSV(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz p0, :cond_0

    .line 1137
    invoke-static {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->parseFragmentXMLCSV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1138
    .local v1, partialResult:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1140
    .local v0, fragment:Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    const/4 v3, 0x1

    aget-object p0, v1, v3

    .line 1142
    goto :goto_0

    .line 1143
    .end local v0           #fragment:Ljava/lang/String;
    .end local v1           #partialResult:[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static parseXMLCSVTOProperties(Ljava/lang/String;)Lorg/cybergarage/upnp/event/PropertyList;
    .locals 7
    .parameter "s"

    .prologue
    .line 1162
    new-instance v2, Lorg/cybergarage/upnp/event/PropertyList;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/PropertyList;-><init>()V

    .line 1163
    .local v2, results:Lorg/cybergarage/upnp/event/PropertyList;
    invoke-static {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->parseXMLCSV(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1164
    .local v1, propertyString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1165
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1168
    :cond_1
    const-string v4, "<DIDL-Lite xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"><item id=\"\" restricted=\"0\">%s</item></DIDL-Lite>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1169
    .local v3, xml:Ljava/lang/String;
    invoke-static {v3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->parseProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Property;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1171
    .end local v1           #propertyString:Ljava/lang/String;
    .end local v3           #xml:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private searchActionReceived(Lorg/cybergarage/upnp/std/av/server/action/SearchAction;)Z
    .locals 21
    .parameter "action"

    .prologue
    .line 1456
    if-nez p1, :cond_0

    .line 1457
    const/16 v19, 0x0

    .line 1513
    :goto_0
    return v19

    .line 1459
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/Action;->print()V

    .line 1460
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getContainerID()Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, contaierID:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v9

    .line 1462
    .local v9, node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1463
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v9

    .line 1465
    check-cast v4, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .line 1466
    .local v4, containerNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getSearchCriteria()Ljava/lang/String;

    move-result-object v15

    .line 1467
    .local v15, searchCriteria:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCriteriaList(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;

    move-result-object v14

    .line 1468
    .local v14, searchCriList:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCapList()Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    move-result-object v13

    .line 1471
    .local v13, searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    .line 1472
    .local v5, contentNodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v8

    .line 1473
    .local v8, nChildNodes:I
    const/4 v7, 0x0

    .local v7, n:I
    :goto_1
    if-ge v7, v8, :cond_6

    .line 1474
    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v2

    .line 1475
    .local v2, cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1476
    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v2           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v13, v5}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchContentList(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;)I

    .line 1473
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1477
    .restart local v2       #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_4
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isItemNode()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1478
    invoke-virtual {v14, v2, v13}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1479
    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1483
    :cond_5
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1486
    .end local v2           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_6
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v8

    .line 1489
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getSortCriteria()Ljava/lang/String;

    move-result-object v16

    .line 1490
    .local v16, sortCriteria:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortContentNodeList(Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    move-result-object v17

    .line 1492
    .local v17, sortedContentNodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getStartingIndex()I

    move-result v18

    .line 1493
    .local v18, startingIndex:I
    if-gtz v18, :cond_7

    .line 1494
    const/16 v18, 0x0

    .line 1495
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->getRequestedCount()I

    move-result v11

    .line 1496
    .local v11, requestedCount:I
    if-nez v11, :cond_8

    .line 1497
    move v11, v8

    .line 1499
    :cond_8
    new-instance v6, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v6}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 1500
    .local v6, didlLite:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    const/4 v10, 0x0

    .line 1501
    .local v10, numberReturned:I
    move/from16 v7, v18

    :goto_3
    if-ge v7, v8, :cond_9

    if-ge v10, v11, :cond_9

    .line 1502
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v2

    .line 1503
    .restart local v2       #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v6, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 1504
    add-int/lit8 v10, v10, 0x1

    .line 1501
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1507
    .end local v2           #cnode:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_9
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1508
    .local v12, result:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setResult(Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setNumberReturned(I)V

    .line 1510
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setTotalMaches(I)V

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;->setUpdateID(I)V

    .line 1513
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method private setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 0
    .parameter "mserver"

    .prologue
    .line 566
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 567
    return-void
.end method

.method private sortContentNodeList(Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    .locals 13
    .parameter "contentNodeList"
    .parameter "sortCriteria"

    .prologue
    const/16 v12, 0x2d

    .line 1313
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    :cond_0
    move-object v9, p1

    .line 1343
    :cond_1
    return-object v9

    .line 1316
    :cond_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1317
    .local v4, nChildNodes:I
    new-array v1, v4, [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 1318
    .local v1, conNode:[Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1319
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v10

    aput-object v10, v1, v3

    .line 1318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1321
    :cond_3
    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCriteriaArray(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;

    move-result-object v7

    .line 1322
    .local v7, sortCritList:Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1323
    .local v5, nSortCrit:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_8

    .line 1324
    invoke-virtual {v7, v3}, Lorg/cybergarage/upnp/std/av/server/object/SortCriterionList;->getSortCriterion(I)Ljava/lang/String;

    move-result-object v8

    .line 1325
    .local v8, sortStr:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1326
    const/4 v0, 0x1

    .line 1327
    .local v0, ascSeq:Z
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1328
    .local v2, firstSortChar:C
    if-ne v2, v12, :cond_4

    .line 1329
    const/4 v0, 0x0

    .line 1330
    :cond_4
    const/16 v10, 0x2b

    if-eq v2, v10, :cond_5

    if-ne v2, v12, :cond_6

    .line 1331
    :cond_5
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1332
    :cond_6
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v6

    .line 1333
    .local v6, sortCap:Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    if-nez v6, :cond_7

    .line 1323
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1335
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ascSeq = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1336
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  sortCap = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, v1, v6, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortContentNodeList([Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SortCap;Z)V

    goto :goto_2

    .line 1340
    .end local v0           #ascSeq:Z
    .end local v2           #firstSortChar:C
    .end local v6           #sortCap:Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .end local v8           #sortStr:Ljava/lang/String;
    :cond_8
    new-instance v9, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    .line 1341
    .local v9, sortedContentNodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_1

    .line 1342
    aget-object v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1341
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private sortContentNodeList([Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SortCap;Z)V
    .locals 8
    .parameter "conNode"
    .parameter "sortCap"
    .parameter "ascSeq"

    .prologue
    .line 1284
    array-length v4, p1

    .line 1285
    .local v4, nConNode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v2, v6, :cond_3

    .line 1286
    move v5, v2

    .line 1287
    .local v5, selIdx:I
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1288
    aget-object v6, p1, v5

    aget-object v7, p1, v3

    invoke-interface {p2, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/SortCap;->compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)I

    move-result v0

    .line 1289
    .local v0, cmpRet:I
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    if-gez v0, :cond_0

    .line 1290
    move v5, v3

    .line 1291
    :cond_0
    if-nez p3, :cond_1

    if-lez v0, :cond_1

    .line 1292
    move v5, v3

    .line 1287
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1294
    .end local v0           #cmpRet:I
    :cond_2
    aget-object v1, p1, v2

    .line 1295
    .local v1, conTmp:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 1296
    aput-object v1, p1, v5

    .line 1285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    .end local v1           #conTmp:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v3           #j:I
    .end local v5           #selIdx:I
    :cond_3
    return-void
.end method

.method private updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;Ljava/util/Map;)Z
    .locals 22
    .parameter "itemNode"
    .parameter "file"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1731
    .local p3, mediaStoreMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v8

    .line 1732
    .local v8, format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v8, :cond_0

    .line 1733
    const/16 v20, 0x0

    .line 1791
    :goto_0
    return v20

    .line 1737
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 1740
    const-string v20, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1741
    .local v18, title:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_1

    .line 1742
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 1744
    :cond_1
    const-string v20, "creator"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1745
    .local v4, creator:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 1746
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setCreator(Ljava/lang/String;)V

    .line 1749
    :cond_2
    const-string v20, "mediaClass"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1750
    .local v14, mediaClass:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 1751
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setUPnPClass(Ljava/lang/String;)V

    .line 1754
    :cond_3
    const-string v20, "lastModTime"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1755
    .local v11, lastModTime:J
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setDate(J)V

    .line 1758
    const-wide/16 v6, 0x0

    .line 1760
    .local v6, fileSize:J
    :try_start_0
    const-string v20, "fileSize"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1761
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setStorageUsed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    :goto_1
    invoke-interface {v8}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 1769
    .local v15, mimeType:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "http-get:*:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDlnaProtocolOpFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1770
    .local v16, protocol:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v10

    .line 1773
    .local v10, id:Ljava/lang/String;
    new-instance v17, Lorg/cybergarage/xml/Node;

    invoke-direct/range {v17 .. v17}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 1774
    .local v17, rn:Lorg/cybergarage/xml/Node;
    const-string v20, "res"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 1775
    const-string v20, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string v20, "protocolInfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/cybergarage/upnp/Device;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v3

    .line 1779
    .local v3, addrs:[Ljava/net/InetAddress;
    const/4 v13, 0x1

    .line 1780
    .local v13, loops:I
    if-eqz v3, :cond_4

    array-length v0, v3

    move/from16 v20, v0

    if-lez v20, :cond_4

    array-length v13, v3

    .line 1781
    :cond_4
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v13, :cond_9

    .line 1782
    if-eqz v3, :cond_5

    array-length v0, v3

    move/from16 v20, v0

    if-nez v20, :cond_7

    :cond_5
    const-string v20, "127.0.0.1"

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1783
    .local v19, url:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1784
    if-eqz v3, :cond_6

    array-length v0, v3

    move/from16 v20, v0

    if-nez v20, :cond_8

    :cond_6
    const-string v20, "127.0.0.1"

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentImportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1785
    const-string v20, "importUri"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1781
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1763
    .end local v3           #addrs:[Ljava/net/InetAddress;
    .end local v9           #i:I
    .end local v10           #id:Ljava/lang/String;
    .end local v13           #loops:I
    .end local v15           #mimeType:Ljava/lang/String;
    .end local v16           #protocol:Ljava/lang/String;
    .end local v17           #rn:Lorg/cybergarage/xml/Node;
    .end local v19           #url:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1764
    .local v5, e:Ljava/lang/Exception;
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1782
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #addrs:[Ljava/net/InetAddress;
    .restart local v9       #i:I
    .restart local v10       #id:Ljava/lang/String;
    .restart local v13       #loops:I
    .restart local v15       #mimeType:Ljava/lang/String;
    .restart local v16       #protocol:Ljava/lang/String;
    .restart local v17       #rn:Lorg/cybergarage/xml/Node;
    :cond_7
    aget-object v20, v3, v9

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    .line 1784
    .restart local v19       #url:Ljava/lang/String;
    :cond_8
    aget-object v20, v3, v9

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 1789
    .end local v19           #url:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 1791
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method private updateObject(Lorg/cybergarage/upnp/Action;)Z
    .locals 11
    .parameter "action"

    .prologue
    const/4 v8, 0x0

    .line 1181
    const-string v9, "ObjectID"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1182
    .local v4, id:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1184
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v0, :cond_1

    .line 1185
    const/16 v9, 0x2bd

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    .line 1220
    :cond_0
    :goto_0
    return v8

    .line 1188
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getRestricted()I

    move-result v9

    if-lez v9, :cond_2

    .line 1189
    const/16 v9, 0x2c7

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto :goto_0

    .line 1193
    :cond_2
    const-string v9, "CurrentTagValue"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->parsePropertiesList(Ljava/lang/String;)Lorg/cybergarage/upnp/event/PropertyList;

    move-result-object v1

    .line 1194
    .local v1, currentProperties:Lorg/cybergarage/upnp/event/PropertyList;
    const-string v9, "NewTagValue"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->parsePropertiesList(Ljava/lang/String;)Lorg/cybergarage/upnp/event/PropertyList;

    move-result-object v6

    .line 1195
    .local v6, newProperties:Lorg/cybergarage/upnp/event/PropertyList;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 1197
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    .local v5, n:I
    :goto_1
    if-ge v3, v5, :cond_a

    .line 1198
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/event/PropertyList;->getProperty(I)Lorg/cybergarage/upnp/event/Property;

    move-result-object v2

    .line 1199
    .local v2, currentProperty:Lorg/cybergarage/upnp/event/Property;
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/event/PropertyList;->getProperty(I)Lorg/cybergarage/upnp/event/Property;

    move-result-object v7

    .line 1202
    .local v7, newProperty:Lorg/cybergarage/upnp/event/Property;
    if-eqz v2, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1207
    :cond_3
    if-nez v2, :cond_5

    if-nez v7, :cond_5

    .line 1197
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1209
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "upnp:class"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "upnp:class"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1212
    :cond_7
    if-eqz v2, :cond_8

    if-nez v7, :cond_8

    .line 1213
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->removeProperty(Ljava/lang/String;)Z

    goto :goto_2

    .line 1214
    :cond_8
    if-eqz v7, :cond_9

    if-nez v2, :cond_9

    .line 1215
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1217
    :cond_9
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1219
    .end local v2           #currentProperty:Lorg/cybergarage/upnp/event/Property;
    .end local v7           #newProperty:Lorg/cybergarage/upnp/event/Property;
    :cond_a
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 1220
    const/4 v8, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 11
    .parameter "action"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 877
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, actionName:Ljava/lang/String;
    const-string v10, "Browse"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_0

    .line 880
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;

    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 881
    .local v1, browseAct:Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->browseActionReceived(Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;)Z

    move-result v8

    .line 938
    .end local v1           #browseAct:Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;
    :goto_0
    return v8

    .line 884
    :cond_0
    const-string v10, "Search"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_1

    .line 885
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;

    invoke-direct {v3, p1}, Lorg/cybergarage/upnp/std/av/server/action/SearchAction;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 886
    .local v3, searchAct:Lorg/cybergarage/upnp/std/av/server/action/SearchAction;
    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchActionReceived(Lorg/cybergarage/upnp/std/av/server/action/SearchAction;)Z

    move-result v8

    goto :goto_0

    .line 890
    .end local v3           #searchAct:Lorg/cybergarage/upnp/std/av/server/action/SearchAction;
    :cond_1
    const-string v10, "GetSearchCapabilities"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_2

    .line 891
    const-string v9, "SearchCaps"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    .line 892
    .local v4, searchCapsArg:Lorg/cybergarage/upnp/Argument;
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSearchCapabilities()Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, searchCapsStr:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 898
    .end local v4           #searchCapsArg:Lorg/cybergarage/upnp/Argument;
    .end local v5           #searchCapsStr:Ljava/lang/String;
    :cond_2
    const-string v10, "GetSortCapabilities"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_3

    .line 899
    const-string v9, "SortCaps"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    .line 900
    .local v6, sortCapsArg:Lorg/cybergarage/upnp/Argument;
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSortCapabilities()Ljava/lang/String;

    move-result-object v7

    .line 901
    .local v7, sortCapsStr:Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 905
    .end local v6           #sortCapsArg:Lorg/cybergarage/upnp/Argument;
    .end local v7           #sortCapsStr:Ljava/lang/String;
    :cond_3
    const-string v10, "GetSystemUpdateID"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_4

    .line 906
    const-string v9, "Id"

    invoke-virtual {p1, v9}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 907
    .local v2, idArg:Lorg/cybergarage/upnp/Argument;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    goto :goto_0

    .line 911
    .end local v2           #idArg:Lorg/cybergarage/upnp/Argument;
    :cond_4
    const-string v10, "GetFeatureList"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_5

    .line 912
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFeatureList(Lorg/cybergarage/upnp/Action;)Z

    move-result v8

    goto :goto_0

    .line 915
    :cond_5
    const-string v10, "CreateObject"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_6

    .line 916
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->createObject(Lorg/cybergarage/upnp/Action;)Z

    move-result v8

    goto :goto_0

    .line 919
    :cond_6
    const-string v10, "DestroyObject"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_7

    .line 920
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->destroyObject(Lorg/cybergarage/upnp/Action;)Z

    move-result v8

    goto :goto_0

    .line 923
    :cond_7
    const-string v10, "UpdateObject"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_8

    .line 924
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateObject(Lorg/cybergarage/upnp/Action;)Z

    move-result v8

    goto/16 :goto_0

    .line 927
    :cond_8
    const-string v10, "MoveObject"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_9

    move v8, v9

    .line 928
    goto/16 :goto_0

    .line 931
    :cond_9
    const-string v10, "DeleteResource"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_a

    .line 932
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->deleteResource(Lorg/cybergarage/upnp/Action;)Z

    move-result v8

    goto/16 :goto_0

    .line 935
    :cond_a
    const-string v10, "ImportResource"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_b

    .line 936
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->importResource(Lorg/cybergarage/upnp/Action;)Z

    move-result v8

    goto/16 :goto_0

    :cond_b
    move v8, v9

    .line 938
    goto/16 :goto_0
.end method

.method public addDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)Z
    .locals 2
    .parameter "dir"

    .prologue
    .line 817
    invoke-virtual {p1, p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 818
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContainerID()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 820
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateContentList()V

    .line 821
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 825
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method public addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 663
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public addSearchCap(Lorg/cybergarage/upnp/std/av/server/object/SearchCap;)Z
    .locals 1
    .parameter "searchCap"

    .prologue
    .line 751
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method public addSortCap(Lorg/cybergarage/upnp/std/av/server/object/SortCap;)Z
    .locals 1
    .parameter "sortCap"

    .prologue
    .line 703
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public contentExportRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 19
    .parameter "httpReq"

    .prologue
    .line 1531
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v16

    .line 1532
    .local v16, uri:Ljava/lang/String;
    const-string v17, "/ExportContent"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1533
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 1603
    :goto_0
    return-void

    .line 1537
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->getParameterList()Lorg/cybergarage/http/ParameterList;

    move-result-object v15

    .line 1538
    .local v15, paramList:Lorg/cybergarage/http/ParameterList;
    const/4 v12, 0x0

    .local v12, n:I
    :goto_1
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_1

    .line 1539
    invoke-virtual {v15, v12}, Lorg/cybergarage/http/ParameterList;->getParameter(I)Lorg/cybergarage/http/Parameter;

    move-result-object v14

    .line 1540
    .local v14, param:Lorg/cybergarage/http/Parameter;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/cybergarage/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/cybergarage/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1538
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1547
    .end local v14           #param:Lorg/cybergarage/http/Parameter;
    :cond_1
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/cybergarage/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1553
    .local v9, id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v13

    .line 1554
    .local v13, node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v13, :cond_2

    .line 1555
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0

    .line 1558
    :cond_2
    instance-of v0, v13, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 1559
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0

    :cond_3
    move-object v10, v13

    .line 1568
    check-cast v10, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .line 1570
    .local v10, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getContentLength()J

    move-result-wide v5

    .line 1571
    .local v5, contentLen:J
    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getMimeType()Ljava/lang/String;

    move-result-object v7

    .line 1572
    .local v7, contentType:Ljava/lang/String;
    invoke-virtual {v10}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1574
    .local v4, contentIn:Ljava/io/InputStream;
    const-wide/16 v17, 0x0

    cmp-long v17, v5, v17

    if-lez v17, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    if-nez v4, :cond_5

    .line 1575
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0

    .line 1579
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v11

    .line 1580
    .local v11, mserver:Lorg/cybergarage/upnp/std/av/server/MediaServer;
    invoke-virtual {v11}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v3

    .line 1581
    .local v3, conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getNextConnectionID()I

    move-result v1

    .line 1582
    .local v1, conID:I
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    invoke-direct {v2, v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;-><init>(I)V

    .line 1583
    .local v2, conInfo:Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    invoke-virtual {v2, v7}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setProtocolInfo(Ljava/lang/String;)V

    .line 1584
    const-string v17, "Output"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setDirection(Ljava/lang/String;)V

    .line 1585
    const-string v17, "OK"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->setStatus(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->addConnectionInfo(Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;)V

    .line 1589
    new-instance v8, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v8}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1590
    .local v8, httpRes:Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v8, v7}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 1591
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1592
    invoke-virtual {v8, v5, v6}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 1593
    invoke-virtual {v8, v4}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 1595
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1598
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    :goto_2
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->removeConnectionInfo(I)V

    goto/16 :goto_0

    .line 1600
    :catch_0
    move-exception v17

    goto :goto_2
.end method

.method public createContainer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "containerID"
    .parameter "title"

    .prologue
    const/4 v7, 0x0

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, cid:Ljava/lang/String;
    const-string v4, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\"> <container id=\"1111\" searchable=\"1\" parentID=\"0\" restricted=\"0\"><dc:title>testDir</dc:title><upnp:class>object.container</upnp:class></container></DIDL-Lite>"

    .line 987
    .local v4, meta:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 988
    .local v5, nd:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 989
    .local v1, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v1, :cond_0

    .line 1008
    .end local v1           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v5           #nd:Lorg/cybergarage/xml/Node;
    :goto_0
    return-object v7

    .line 992
    .restart local v1       #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .restart local v5       #nd:Lorg/cybergarage/xml/Node;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 993
    new-instance v6, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-direct {v6}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 994
    .local v6, sn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 995
    invoke-virtual {v6, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContentID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {v6, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(Ljava/lang/String;)V

    .line 998
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v1           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 999
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 1000
    .local v2, didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    invoke-virtual {v2, v6}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1007
    .end local v2           #didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    .end local v6           #sn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    move-object v7, v0

    .line 1008
    goto :goto_0

    .line 1002
    .end local v5           #nd:Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v3

    .line 1003
    .local v3, e:Lorg/cybergarage/xml/ParserException;
    goto :goto_0

    .line 1004
    .end local v3           #e:Lorg/cybergarage/xml/ParserException;
    :catch_1
    move-exception v3

    .line 1005
    .local v3, e:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public createFileItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 7
    .parameter "containerID"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;"
        }
    .end annotation

    .prologue
    .local p3, mediaStoreMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1035
    move-object v0, p1

    .line 1036
    .local v0, cid:Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;-><init>()V

    .line 1037
    .local v3, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v2, fp:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v3, v5

    .line 1055
    .end local v3           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    :cond_1
    :goto_0
    return-object v3

    .line 1041
    .restart local v3       #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    :cond_2
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 1042
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextItemID()I

    move-result v4

    .line 1043
    .local v4, newItemID:I
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 1044
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v3, v6, p3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;Ljava/util/Map;)Z

    .line 1045
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 1046
    .local v1, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-nez v1, :cond_3

    move-object v3, v5

    .line 1047
    goto :goto_0

    .line 1050
    :cond_3
    instance-of v5, v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    if-eqz v5, :cond_1

    .line 1051
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v1           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 1052
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    goto :goto_0
.end method

.method public createItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "containerID"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, mediaStoreMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1011
    move-object v0, p1

    .line 1012
    .local v0, cid:Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;-><init>()V

    .line 1013
    .local v3, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v2, fp:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-object v5

    .line 1017
    :cond_1
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 1018
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextItemID()I

    move-result v4

    .line 1019
    .local v4, newItemID:I
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 1020
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v3, v6, p3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;Ljava/util/Map;)Z

    .line 1021
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 1022
    .local v1, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v1, :cond_0

    .line 1026
    instance-of v5, v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    if-eqz v5, :cond_2

    .line 1027
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v1           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 1028
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 1031
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public deleteAllObject()V
    .locals 4

    .prologue
    .line 1072
    const-string v3, "0"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1073
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v0, :cond_1

    .line 1074
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1075
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 1076
    .local v2, node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    check-cast v3, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    .end local v2           #node:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 1080
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public deleteObject(Ljava/lang/String;)V
    .locals 3
    .parameter "objectID"

    .prologue
    .line 1059
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Can not remove root."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 1064
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 1066
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    goto :goto_0
.end method

.method public findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .parameter "id"

    .prologue
    .line 866
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getRootNode()Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getContentExportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ExportContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ip"
    .parameter "id"

    .prologue
    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ExportContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentImportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ImportContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentImportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ip"
    .parameter "id"

    .prologue
    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ImportContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentUpdateInterval()J
    .locals 2

    .prologue
    .line 1664
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentUpdateInterval:J

    return-wide v0
.end method

.method public getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 1
    .parameter "n"

    .prologue
    .line 857
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    return-object v0
.end method

.method public getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 1
    .parameter "n"

    .prologue
    .line 674
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    return-object v0
.end method

.method public getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 1
    .parameter "file"

    .prologue
    .line 669
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 1616
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1611
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    return-object v0
.end method

.method public getNDirectories()I
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNFormats()I
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->formatList:Lorg/cybergarage/upnp/std/av/server/object/FormatList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNSearchCaps()I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNSortCaps()I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNextContainerID()I
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContentID()I

    move-result v0

    return v0
.end method

.method public getNextItemID()I
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContentID()I

    move-result v0

    return v0
.end method

.method public getRootNode()Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    return-object v0
.end method

.method public getSearchCap(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .locals 1
    .parameter "n"

    .prologue
    .line 767
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->getSearchCap(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .locals 1
    .parameter "type"

    .prologue
    .line 772
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->getSearchCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCapList()Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->searchCapList:Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;

    return-object v0
.end method

.method public getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .locals 1
    .parameter "n"

    .prologue
    .line 714
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->getSortCap(I)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v0

    return-object v0
.end method

.method public getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;
    .locals 1
    .parameter "type"

    .prologue
    .line 719
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->sortCapList:Lorg/cybergarage/upnp/std/av/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/SortCapList;->getSortCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SortCap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSystemUpdateID()I
    .locals 1

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemUpdateIDInterval()J
    .locals 2

    .prologue
    .line 1654
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateIDInterval:J

    return-wide v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 583
    return-void
.end method

.method protected parsePropertiesList(Ljava/lang/String;)Lorg/cybergarage/upnp/event/PropertyList;
    .locals 2
    .parameter "s"

    .prologue
    .line 1175
    :try_start_0
    invoke-static {p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->parseXMLCSVTOProperties(Ljava/lang/String;)Lorg/cybergarage/upnp/event/PropertyList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1177
    :goto_0
    return-object v1

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .parameter "stateVar"

    .prologue
    .line 1522
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllDirectories()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public removeDirectory(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 832
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 833
    .local v0, dirNode:Lorg/cybergarage/upnp/std/av/server/Directory;
    if-nez v0, :cond_0

    .line 834
    const/4 v1, 0x0

    .line 841
    :goto_0
    return v1

    .line 835
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 836
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->rootNode:Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->removeNode(Lorg/cybergarage/xml/Node;)Z

    .line 839
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 841
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 1669
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v13

    .line 1670
    .local v13, mserver:Lorg/cybergarage/upnp/std/av/server/MediaServer;
    const-string v17, "SystemUpdateID"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v16

    .line 1671
    .local v16, varSystemUpdateID:Lorg/cybergarage/upnp/StateVariable;
    const-string v17, "ContainerUpdateIDs"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v15

    .line 1673
    .local v15, varContainerUpdateIDs:Lorg/cybergarage/upnp/StateVariable;
    const/4 v12, 0x0

    .line 1674
    .local v12, lastSystemUpdateID:I
    const-wide/16 v10, 0x0

    .line 1675
    .local v10, lastContentUpdateTime:J
    const-wide/16 v8, 0x0

    .line 1676
    .local v8, lastAddressUpdateID:J
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/util/ThreadCore;->isRunnable()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1678
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateIDInterval()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getSystemUpdateID()I

    move-result v4

    .line 1683
    .local v4, currSystemUpdateID:I
    if-eq v12, v4, :cond_1

    .line 1684
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/cybergarage/upnp/StateVariable;->setValue(I)V

    .line 1685
    move v12, v4

    .line 1689
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1690
    .local v3, containerUpdate:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->dirList:Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/cybergarage/upnp/std/av/server/Directory;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getUpdate(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;)Ljava/lang/String;

    move-result-object v14

    .line 1692
    .local v14, s:Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 1693
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1690
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1696
    .end local v14           #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 1697
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1698
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 1699
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ContainerUpdateIDs="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 1703
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1704
    .local v5, currTime:J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentUpdateInterval()J

    move-result-wide v17

    sub-long v19, v5, v10

    cmp-long v17, v17, v19

    if-gez v17, :cond_5

    .line 1705
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDirectoryList()Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->update()V

    .line 1706
    move-wide v10, v5

    .line 1709
    :cond_5
    invoke-virtual {v13}, Lorg/cybergarage/upnp/Device;->getAddressUpdateID()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v8, v17

    if-eqz v17, :cond_0

    .line 1710
    invoke-virtual {v13}, Lorg/cybergarage/upnp/Device;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v2

    .line 1711
    .local v2, addrs:[Ljava/net/InetAddress;
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDirectoryList()Lorg/cybergarage/upnp/std/av/server/DirectoryList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->updateResources([Ljava/net/InetAddress;)V

    .line 1712
    invoke-virtual {v13}, Lorg/cybergarage/upnp/Device;->getAddressUpdateID()I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 1713
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Resource Uri Updated:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    .end local v2           #addrs:[Ljava/net/InetAddress;
    .end local v3           #containerUpdate:Ljava/lang/StringBuffer;
    .end local v4           #currSystemUpdateID:I
    .end local v5           #currTime:J
    .end local v7           #i:I
    :cond_6
    return-void

    .line 1679
    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method

.method public setContentUpdateInterval(J)V
    .locals 0
    .parameter "itime"

    .prologue
    .line 1659
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentUpdateInterval:J

    .line 1660
    return-void
.end method

.method public setSystemUpdateInterval(J)V
    .locals 0
    .parameter "itime"

    .prologue
    .line 1649
    iput-wide p1, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateIDInterval:J

    .line 1650
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 588
    return-void
.end method

.method public declared-synchronized updateSystemUpdateID()V
    .locals 1

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->systemUpdateID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
