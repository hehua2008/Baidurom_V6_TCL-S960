.class public Lorg/cybergarage/upnp/Service;
.super Ljava/lang/Object;
.source "Service.java"


# static fields
.field private static final CONTROL_URL:Ljava/lang/String; = "controlURL"

.field public static final ELEM_NAME:Ljava/lang/String; = "service"

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static final MAJOR:Ljava/lang/String; = "major"

.field public static final MAJOR_VALUE:Ljava/lang/String; = "1"

.field public static final MINOR:Ljava/lang/String; = "minor"

.field public static final MINOR_VALUE:Ljava/lang/String; = "0"

.field private static Number:I = 0x0

.field private static final SCPDURL:Ljava/lang/String; = "SCPDURL"

.field public static final SCPD_ROOTNODE:Ljava/lang/String; = "scpd"

.field public static final SCPD_ROOTNODE_NS:Ljava/lang/String; = "urn:schemas-upnp-org:service-1-0"

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SERVICE_TYPE:Ljava/lang/String; = "serviceType"

.field public static final SPEC_VERSION:Ljava/lang/String; = "specVersion"

.field private static final mLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private mutex:Lorg/cybergarage/util/Mutex;

.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 135
    const/4 v0, 0x0

    sput v0, Lorg/cybergarage/upnp/Service;->Number:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 138
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v5, "service"

    invoke-direct {v4, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 140
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v4, "specVersion"

    invoke-direct {v3, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, sp:Lorg/cybergarage/xml/Node;
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v4, "major"

    invoke-direct {v0, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, M:Lorg/cybergarage/xml/Node;
    const-string v4, "1"

    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 146
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v4, "minor"

    invoke-direct {v1, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, m:Lorg/cybergarage/xml/Node;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 151
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v4, "scpd"

    invoke-direct {v2, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, scpd:Lorg/cybergarage/xml/Node;
    const-string v4, "xmlns"

    const-string v5, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v2, v4, v5}, Lorg/cybergarage/xml/Node;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 154
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 159
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 160
    return-void
.end method

.method private getDeviceNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 194
    .local v0, node:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getNotifyServiceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode()Lorg/cybergarage/xml/Node;
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 412
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 413
    .local v0, data:Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v8

    .line 414
    .local v8, scpdNode:Lorg/cybergarage/xml/Node;
    if-eqz v8, :cond_1

    move-object v11, v8

    .line 480
    :cond_0
    :goto_0
    return-object v11

    .line 418
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v6

    .line 419
    .local v6, rootDev:Lorg/cybergarage/upnp/Device;
    if-eqz v6, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, scpdURLStr:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, rootDevPath:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 428
    new-instance v2, Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 432
    :try_start_0
    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 437
    :goto_1
    if-eqz v8, :cond_2

    .line 438
    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    move-object v11, v8

    .line 439
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 435
    .local v1, e:Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 445
    .end local v1           #e:Lorg/cybergarage/xml/ParserException;
    .end local v2           #f:Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v10, Ljava/net/URL;

    invoke-virtual {v6, v9}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 446
    .local v10, scpdUrl:Ljava/net/URL;
    invoke-direct {p0, v10}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v8

    .line 447
    if-eqz v8, :cond_3

    .line 448
    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v8

    .line 449
    goto :goto_0

    .line 452
    .end local v10           #scpdUrl:Ljava/net/URL;
    :catch_1
    move-exception v12

    .line 455
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, location:Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 457
    .local v3, index:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v10       #scpdUrl:Ljava/net/URL;
    invoke-direct {p0, v10}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v8

    .line 461
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "======= location  ====== "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    if-eqz v8, :cond_4

    .line 463
    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v8

    .line 464
    goto/16 :goto_0

    .line 467
    .end local v3           #index:I
    .end local v4           #location:Ljava/lang/String;
    .end local v10           #scpdUrl:Ljava/net/URL;
    :catch_2
    move-exception v1

    .line 468
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 471
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, newScpdURLStr:Ljava/lang/String;
    :try_start_3
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    move-object v11, v8

    .line 474
    goto/16 :goto_0

    .line 476
    :catch_3
    move-exception v1

    .line 477
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    .locals 2
    .parameter "scpdFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 398
    .local v0, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getSCPDNode(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .locals 3
    .parameter "is"

    .prologue
    .line 401
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 403
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 407
    :goto_0
    return-object v2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Lorg/cybergarage/xml/ParserException;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 407
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 2
    .parameter "scpdUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 392
    .local v0, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;
    .locals 2

    .prologue
    .line 614
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 615
    .local v0, node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/ServiceData;

    .line 616
    .local v1, userData:Lorg/cybergarage/upnp/xml/ServiceData;
    if-nez v1, :cond_0

    .line 617
    new-instance v1, Lorg/cybergarage/upnp/xml/ServiceData;

    .end local v1           #userData:Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/ServiceData;-><init>()V

    .line 618
    .restart local v1       #userData:Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 619
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/NodeData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 621
    :cond_0
    return-object v1
.end method

.method public static isServiceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 184
    const-string v0, "service"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "referenceUrl"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 266
    :cond_1
    :goto_0
    return v2

    .line 259
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 260
    .local v1, ret:Z
    if-eq v1, v2, :cond_1

    .line 262
    invoke-static {p1, v3}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, relativeRefUrl:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 264
    if-eq v1, v2, :cond_1

    move v2, v3

    .line 266
    goto :goto_0
.end method

.method private declared-synchronized notify(Lorg/cybergarage/upnp/event/Subscriber;Ljava/util/HashMap;)Z
    .locals 13
    .parameter "sub"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cybergarage/upnp/event/Subscriber;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 844
    .local p2, stateVariables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    sget-object v9, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v4

    .line 854
    .local v4, port:I
    new-instance v2, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>()V

    .line 855
    .local v2, notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v6

    .line 856
    .local v6, serviceType:Ljava/lang/String;
    const-string v3, ""

    .line 858
    .local v3, ns:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 859
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "avtransport"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 860
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/AVT/"

    .line 862
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "renderingcontrol"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 863
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/RCS/"

    .line 865
    :cond_1
    invoke-virtual {v2, p1, p2, v3}, Lorg/cybergarage/upnp/event/NotifyRequest;->setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/util/HashMap;Ljava/lang/String;)Z

    .line 871
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Lorg/cybergarage/upnp/event/NotifyRequest;->lastEventTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v7, v9, v11

    .line 874
    .local v7, timeSpace:J
    const-wide/16 v9, 0x12c

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    .line 876
    const-wide/16 v9, 0x12c

    sub-long/2addr v9, v7

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 884
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lorg/cybergarage/upnp/event/NotifyRequest;->lastEventTime:J

    .line 885
    invoke-virtual {v2, v1, v4}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v5

    .line 888
    .local v5, res:Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v5}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-nez v9, :cond_4

    .line 889
    const/4 v9, 0x0

    .line 896
    :try_start_4
    sget-object v10, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit p0

    return v9

    .line 867
    .end local v5           #res:Lorg/cybergarage/http/HTTPResponse;
    .end local v7           #timeSpace:J
    :cond_3
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v2, p1, p2, v9}, Lorg/cybergarage/upnp/event/NotifyRequest;->setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/util/HashMap;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 896
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v3           #ns:Ljava/lang/String;
    .end local v4           #port:I
    .end local v6           #serviceType:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_6
    sget-object v10, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 844
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 879
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    .restart local v3       #ns:Ljava/lang/String;
    .restart local v4       #port:I
    .restart local v6       #serviceType:Ljava/lang/String;
    .restart local v7       #timeSpace:J
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 892
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v5       #res:Lorg/cybergarage/http/HTTPResponse;
    :cond_4
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->incrementNotifyCount()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 894
    const/4 v9, 0x1

    .line 896
    :try_start_8
    sget-object v10, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method

.method private static declared-synchronized notify(Lorg/cybergarage/upnp/event/Subscriber;Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 15
    .parameter "sub"
    .parameter "stateVar"

    .prologue
    .line 754
    const-class v10, Lorg/cybergarage/upnp/Service;

    monitor-enter v10

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v8

    .line 755
    .local v8, varName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v3

    .line 760
    .local v3, port:I
    new-instance v2, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>()V

    .line 761
    .local v2, notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {v2, p0, v8, v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    sget-object v9, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 766
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v13, Lorg/cybergarage/upnp/event/NotifyRequest;->lastEventTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v5, v11, v13

    .line 767
    .local v5, timeSpace:J
    const-wide/16 v11, 0x12c

    cmp-long v9, v5, v11

    if-gez v9, :cond_0

    .line 770
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v11, 0x12c

    sub-long/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 776
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Lorg/cybergarage/upnp/event/NotifyRequest;->lastEventTime:J

    .line 777
    invoke-virtual {v2, v1, v3}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 779
    .local v4, res:Lorg/cybergarage/http/HTTPResponse;
    :try_start_4
    sget-object v9, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 781
    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    if-nez v9, :cond_1

    .line 782
    const/4 v9, 0x0

    .line 786
    :goto_1
    monitor-exit v10

    return v9

    .line 771
    .end local v4           #res:Lorg/cybergarage/http/HTTPResponse;
    :catch_0
    move-exception v0

    .line 773
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 779
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v5           #timeSpace:J
    :catchall_0
    move-exception v9

    :try_start_6
    sget-object v11, Lorg/cybergarage/upnp/Service;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 754
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v3           #port:I
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #varName:Ljava/lang/String;
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 784
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    .restart local v3       #port:I
    .restart local v4       #res:Lorg/cybergarage/http/HTTPResponse;
    .restart local v5       #timeSpace:J
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #varName:Ljava/lang/String;
    :cond_1
    :try_start_7
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->incrementNotifyCount()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 786
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addAction(Lorg/cybergarage/upnp/Action;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 536
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 537
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Argument;

    .line 539
    .local v1, arg:Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1, p0}, Lorg/cybergarage/upnp/Argument;->setService(Lorg/cybergarage/upnp/Service;)V

    goto :goto_0

    .line 542
    .end local v1           #arg:Lorg/cybergarage/upnp/Argument;
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 543
    .local v3, scdpNode:Lorg/cybergarage/xml/Node;
    const-string v4, "actionList"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 544
    .local v0, actionListNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 545
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0           #actionListNode:Lorg/cybergarage/xml/Node;
    const-string v4, "actionList"

    invoke-direct {v0, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 546
    .restart local v0       #actionListNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 548
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 549
    return-void
.end method

.method public addStateVariable(Lorg/cybergarage/upnp/StateVariable;)V
    .locals 3
    .parameter "var"

    .prologue
    .line 1009
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1010
    .local v0, stateTableNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0           #stateTableNode:Lorg/cybergarage/xml/Node;
    const-string v1, "serviceStateTable"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1016
    .restart local v0       #stateTableNode:Lorg/cybergarage/xml/Node;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/StateVariable;->setServiceNode(Lorg/cybergarage/xml/Node;)V

    .line 1019
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1020
    return-void
.end method

.method public addSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 727
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 8
    .parameter "bindAddr"

    .prologue
    .line 641
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 642
    .local v2, rootDev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, devLocation:Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, serviceNT:Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, serviceUSN:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 648
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 649
    .local v5, ssdpReq:Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/cybergarage/http/HTTPPacket;->setServer(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setLeaseTime(I)V

    .line 651
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setLocation(Ljava/lang/String;)V

    .line 652
    const-string v7, "ssdp:alive"

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNTS(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v5, v3}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v5, v4}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 656
    new-instance v6, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v6, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 657
    .local v6, ssdpSock:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 658
    invoke-virtual {v6, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 659
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 5
    .parameter "bindAddr"

    .prologue
    .line 665
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, devNT:Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, devUSN:Ljava/lang/String;
    new-instance v2, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 669
    .local v2, ssdpReq:Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    const-string v4, "ssdp:byebye"

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNTS(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 673
    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v3, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 674
    .local v3, ssdpSock:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 675
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 676
    return-void
.end method

.method public clearSID()V
    .locals 2

    .prologue
    .line 953
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 954
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 955
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 7
    .parameter "actionName"

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 523
    .local v1, actionList:Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 524
    .local v3, nActions:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 525
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 526
    .local v0, action:Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 524
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 532
    .end local v0           #action:Lorg/cybergarage/upnp/Action;
    .end local v4           #name:Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getActionList()Lorg/cybergarage/upnp/ActionList;
    .locals 8

    .prologue
    .line 502
    new-instance v1, Lorg/cybergarage/upnp/ActionList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/ActionList;-><init>()V

    .line 503
    .local v1, actionList:Lorg/cybergarage/upnp/ActionList;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 504
    .local v6, scdpNode:Lorg/cybergarage/xml/Node;
    if-nez v6, :cond_1

    .line 517
    :cond_0
    return-object v1

    .line 506
    :cond_1
    const-string v7, "actionList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 507
    .local v2, actionListNode:Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 510
    .local v4, nNode:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 511
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 512
    .local v5, node:Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Action;->isActionNode(Lorg/cybergarage/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 510
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Action;

    iget-object v7, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    invoke-direct {v0, v7, v5}, Lorg/cybergarage/upnp/Action;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 515
    .local v0, action:Lorg/cybergarage/upnp/Action;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getControlURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getDescriptionURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public getSCPDData()[B
    .locals 4

    .prologue
    .line 485
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 486
    .local v1, scpdNode:Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_0

    .line 487
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 493
    :goto_0
    return-object v2

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 490
    .local v0, desc:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getSCPDURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;
    .locals 9

    .prologue
    .line 557
    new-instance v5, Lorg/cybergarage/upnp/ServiceStateTable;

    invoke-direct {v5}, Lorg/cybergarage/upnp/ServiceStateTable;-><init>()V

    .line 558
    .local v5, stateTable:Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v7

    const-string v8, "serviceStateTable"

    invoke-virtual {v7, v8}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 559
    .local v6, stateTableNode:Lorg/cybergarage/xml/Node;
    if-nez v6, :cond_1

    .line 570
    :cond_0
    return-object v5

    .line 561
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 562
    .local v3, serviceNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v6}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v1

    .line 563
    .local v1, nNode:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 564
    invoke-virtual {v6, v0}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 565
    .local v2, node:Lorg/cybergarage/xml/Node;
    invoke-static {v2}, Lorg/cybergarage/upnp/StateVariable;->isStateVariableNode(Lorg/cybergarage/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 563
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_2
    new-instance v4, Lorg/cybergarage/upnp/StateVariable;

    invoke-direct {v4, v3, v2}, Lorg/cybergarage/upnp/StateVariable;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 568
    .local v4, serviceVar:Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 7
    .parameter "name"

    .prologue
    .line 575
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 576
    .local v1, stateTable:Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 577
    .local v2, tableSize:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 578
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 579
    .local v3, var:Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, varName:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 585
    .end local v3           #var:Lorg/cybergarage/upnp/StateVariable;
    .end local v4           #varName:Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSubscriber(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Subscriber;
    .locals 7
    .parameter "name"

    .prologue
    .line 737
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v3

    .line 738
    .local v3, subList:Lorg/cybergarage/upnp/event/SubscriberList;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 739
    .local v4, subListCnt:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 740
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v2

    .line 741
    .local v2, sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v2, :cond_1

    .line 739
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, sid:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 749
    .end local v1           #sid:Ljava/lang/String;
    .end local v2           #sub:Lorg/cybergarage/upnp/event/Subscriber;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;
    .locals 1

    .prologue
    .line 722
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 973
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSID()Z
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasStateVariable(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlURL(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventSubURL(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSCPDURL(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isService(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 599
    if-nez p1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 602
    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 604
    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 964
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public loadSCPD(Ljava/io/File;)Z
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 355
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 356
    .local v2, scpdNode:Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 357
    const/4 v3, 0x0

    .line 360
    :goto_0
    return v3

    .line 358
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 359
    .local v0, data:Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 360
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/io/InputStream;)Z
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 369
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 370
    .local v2, scpdNode:Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 371
    const/4 v3, 0x0

    .line 374
    :goto_0
    return v3

    .line 372
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 373
    .local v0, data:Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 374
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/lang/String;)Z
    .locals 5
    .parameter "scpdStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v2

    .line 340
    .local v2, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v2, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 341
    .local v3, scpdNode:Lorg/cybergarage/xml/Node;
    if-nez v3, :cond_0

    .line 342
    const/4 v4, 0x0

    .line 349
    :goto_0
    return v4

    .line 343
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 344
    .local v0, data:Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    const/4 v4, 0x1

    goto :goto_0

    .line 346
    .end local v0           #data:Lorg/cybergarage/upnp/xml/ServiceData;
    .end local v2           #parser:Lorg/cybergarage/xml/Parser;
    .end local v3           #scpdNode:Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Lorg/cybergarage/xml/ParserException;
    new-instance v4, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v4, v1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 171
    return-void
.end method

.method public notify(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    .local p1, stateVariables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 907
    .local v2, subList:Lorg/cybergarage/upnp/event/SubscriberList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 908
    .local v3, subListCnt:I
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 909
    .local v4, subs:[Lorg/cybergarage/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 910
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 911
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    .line 912
    aget-object v1, v4, v0

    .line 913
    .local v1, sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_2

    .line 911
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 915
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->isExpired()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 916
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    goto :goto_2

    .line 920
    .end local v1           #sub:Lorg/cybergarage/upnp/event/Subscriber;
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 921
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 922
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 923
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 924
    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_7

    .line 925
    aget-object v1, v4, v0

    .line 926
    .restart local v1       #sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_6

    .line 924
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 928
    :cond_6
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscriber ======== host = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 929
    invoke-direct {p0, v1, p1}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/event/Subscriber;Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 935
    .end local v1           #sub:Lorg/cybergarage/upnp/event/Subscriber;
    :cond_7
    return-void
.end method

.method public notify(Lorg/cybergarage/upnp/StateVariable;)V
    .locals 7
    .parameter "stateVar"

    .prologue
    .line 791
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 796
    .local v2, subList:Lorg/cybergarage/upnp/event/SubscriberList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 797
    .local v3, subListCnt:I
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 798
    .local v4, subs:[Lorg/cybergarage/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 799
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    .line 801
    aget-object v1, v4, v0

    .line 802
    .local v1, sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_2

    .line 800
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 804
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->isExpired()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 805
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    goto :goto_2

    .line 809
    .end local v1           #sub:Lorg/cybergarage/upnp/event/Subscriber;
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 810
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 811
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 812
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 813
    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_7

    .line 814
    aget-object v1, v4, v0

    .line 815
    .restart local v1       #sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_6

    .line 813
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 817
    :cond_6
    invoke-static {v1, p1}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/event/Subscriber;Lorg/cybergarage/upnp/StateVariable;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 823
    .end local v1           #sub:Lorg/cybergarage/upnp/event/Subscriber;
    :cond_7
    return-void
.end method

.method public notifyAllStateVariables()V
    .locals 8

    .prologue
    .line 828
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v2

    .line 829
    .local v2, stateTable:Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    .line 830
    .local v4, tableSize:I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 831
    .local v3, stateVariables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 832
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v6

    .line 833
    .local v6, var:Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 835
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #var:Lorg/cybergarage/upnp/StateVariable;
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 838
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Service;->notify(Ljava/util/HashMap;)V

    .line 840
    :cond_1
    return-void
.end method

.method public removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 732
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 733
    return-void
.end method

.method public serviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)Z
    .locals 7
    .parameter "ssdpPacket"

    .prologue
    const/4 v5, 0x1

    .line 680
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, ssdpST:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 683
    const/4 v5, 0x0

    .line 699
    :cond_0
    :goto_0
    return v5

    .line 685
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 687
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, serviceNT:Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, serviceUSN:Ljava/lang/String;
    invoke-static {v4}, Lorg/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_2

    .line 691
    invoke-virtual {v0, p1, v1, v3}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 693
    :cond_2
    invoke-static {v4}, Lorg/cybergarage/upnp/device/ST;->isURNService(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 694
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, serviceType:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 696
    invoke-virtual {v0, p1, v2, v3}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 987
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 988
    .local v1, actionList:Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 989
    .local v3, nActions:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 990
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 991
    .local v0, action:Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Action;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 989
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    .end local v0           #action:Lorg/cybergarage/upnp/Action;
    :cond_0
    return-void
.end method

.method public setControlURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public setDescriptionURL(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 380
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ServiceData;->setDescriptionURL(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setEventSubURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 4
    .parameter "queryListener"

    .prologue
    .line 708
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 709
    .local v1, stateTable:Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 710
    .local v2, tableSize:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 711
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 712
    .local v3, var:Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/StateVariable;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v3           #var:Lorg/cybergarage/upnp/StateVariable;
    :cond_0
    return-void
.end method

.method public setSCPDURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 948
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public setServiceID(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 978
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/xml/ServiceData;->setTimeout(J)V

    .line 979
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1030
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 1031
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 176
    return-void
.end method
