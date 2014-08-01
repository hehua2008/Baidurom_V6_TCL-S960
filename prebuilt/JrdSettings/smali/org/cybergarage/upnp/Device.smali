.class public Lorg/cybergarage/upnp/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequestListener;
.implements Lorg/cybergarage/upnp/device/SearchListener;


# static fields
.field public static final DEFAULT_DESCRIPTION_URI:Ljava/lang/String; = "/description.xml"

.field public static final DEFAULT_DISCOVERY_WAIT_TIME:I = 0x12c

.field public static final DEFAULT_LEASE_TIME:I = 0x708

.field public static final DEFAULT_STARTUP_WAIT_TIME:I = 0x3e8

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final ELEM_NAME:Ljava/lang/String; = "device"

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static final HTTP_DEFAULT_PORT:I = 0xfa4

.field public static final ICONS_URI:Ljava/lang/String; = "/DeviceIcons"

.field private static final MANUFACTURE:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURE_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field public static final UPNP_ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"

.field private static final URLBASE_NAME:Ljava/lang/String; = "URLBase"

.field private static cal:Ljava/util/Calendar; = null

.field private static final presentationURL:Ljava/lang/String; = "presentationURL"


# instance fields
.field private addressUpdateID:I

.field private devUUID:Ljava/lang/String;

.field private deviceNode:Lorg/cybergarage/xml/Node;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private rootNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->initialize()V

    .line 1512
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "descriptionFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 231
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/File;)Z

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 240
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/InputStream;)Z

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "descriptionFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 2
    .parameter "root"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput v1, p0, Lorg/cybergarage/upnp/Device;->addressUpdateID:I

    .line 253
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    .line 2297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 212
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 213
    iput-object p2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 214
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->setWirelessMode(Z)V

    .line 216
    return-void
.end method

.method private deviceActionControlRecieved(Lorg/cybergarage/upnp/control/ActionRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 7
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1874
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1875
    invoke-virtual {p1}, Lorg/cybergarage/soap/SOAPRequest;->print()V

    .line 1877
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, actionName:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 1879
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_2

    .line 1880
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    .line 1893
    :cond_1
    :goto_0
    return-void

    .line 1883
    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 1884
    .local v1, actionArgList:Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v4

    .line 1886
    .local v4, reqArgList:Lorg/cybergarage/upnp/ArgumentList;
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/ArgumentList;->setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Action;->performActionListener(Lorg/cybergarage/upnp/control/ActionRequest;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1892
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0

    .line 1887
    :catch_0
    move-exception v3

    .line 1888
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private deviceControlRequestRecieved(Lorg/cybergarage/upnp/control/ControlRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 2
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1852
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1853
    new-instance v0, Lorg/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/QueryRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceQueryControlRecieved(Lorg/cybergarage/upnp/control/QueryRequest;Lorg/cybergarage/upnp/Service;)V

    .line 1856
    :goto_0
    return-void

    .line 1855
    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceActionControlRecieved(Lorg/cybergarage/upnp/control/ActionRequest;Lorg/cybergarage/upnp/Service;)V

    goto :goto_0
.end method

.method private deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 9
    .parameter "service"
    .parameter "subReq"

    .prologue
    const/4 v8, 0x1

    .line 1956
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, callback:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v5

    .line 1967
    .local v5, timeOut:J
    invoke-static {}, Lorg/cybergarage/upnp/event/Subscription;->createSID()Ljava/lang/String;

    move-result-object v2

    .line 1969
    .local v2, sid:Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/event/Subscriber;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/Subscriber;-><init>()V

    .line 1970
    .local v3, sub:Lorg/cybergarage/upnp/event/Subscriber;
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/event/Subscriber;->setDeliveryURL(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v3, v5, v6}, Lorg/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1972
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/event/Subscriber;->setSID(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Service;->addSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    .line 1975
    new-instance v4, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1976
    .local v4, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v7, 0xc8

    invoke-virtual {v4, v7}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1977
    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {v4, v5, v6}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1979
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 1980
    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->print()V

    .line 1981
    :cond_0
    invoke-virtual {p2, v4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1983
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v7

    if-ne v7, v8, :cond_1

    .line 1984
    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->print()V

    .line 1986
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->notifyAllStateVariables()V

    .line 1987
    .end local v2           #sid:Ljava/lang/String;
    .end local v3           #sub:Lorg/cybergarage/upnp/event/Subscriber;
    .end local v4           #subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    .end local v5           #timeOut:J
    :goto_0
    return-void

    .line 1960
    :catch_0
    move-exception v1

    .line 1961
    .local v1, e:Ljava/lang/Exception;
    const/16 v7, 0x19c

    invoke-direct {p0, p2, v7}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 1962
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 7
    .parameter "service"
    .parameter "subReq"

    .prologue
    .line 1991
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, sid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v1

    .line 1994
    .local v1, sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_1

    .line 1995
    const/16 v5, 0x19c

    invoke-direct {p0, p2, v5}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v3

    .line 2000
    .local v3, timeOut:J
    invoke-virtual {v1, v3, v4}, Lorg/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 2001
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->renew()V

    .line 2003
    new-instance v2, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 2004
    .local v2, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 2005
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v2, v3, v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 2007
    invoke-virtual {p2, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 2009
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2010
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPResponse;->print()V

    goto :goto_0
.end method

.method private deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 5
    .parameter "subReq"

    .prologue
    const/16 v4, 0x19c

    const/4 v3, 0x1

    .line 1922
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 1923
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 1924
    .local v0, service:Lorg/cybergarage/upnp/Service;
    if-nez v0, :cond_0

    .line 1925
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 1952
    :goto_0
    return-void

    .line 1928
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1929
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0

    .line 1934
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1935
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1940
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1941
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1946
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1947
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1951
    :cond_4
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 5
    .parameter "service"
    .parameter "subReq"

    .prologue
    .line 2015
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, sid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v1

    .line 2018
    .local v1, sub:Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_1

    .line 2019
    const/16 v3, 0x19c

    invoke-direct {p0, p2, v3}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    .line 2025
    new-instance v2, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 2026
    .local v2, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 2027
    invoke-virtual {p2, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 2029
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2030
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPResponse;->print()V

    goto :goto_0
.end method

.method private deviceQueryControlRecieved(Lorg/cybergarage/upnp/control/QueryRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 4
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1897
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1898
    invoke-virtual {p1}, Lorg/cybergarage/soap/SOAPRequest;->print()V

    .line 1899
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/QueryRequest;->getVarName()Ljava/lang/String;

    move-result-object v1

    .line 1900
    .local v1, varName:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/Service;->hasStateVariable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1901
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    .line 1907
    :cond_1
    :goto_0
    return-void

    .line 1904
    :cond_2
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    .line 1905
    .local v0, stateVar:Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/StateVariable;->performQueryListener(Lorg/cybergarage/upnp/control/QueryRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1906
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;
    .locals 1

    .prologue
    .line 2123
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .locals 4
    .parameter "host"

    .prologue
    .line 1731
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1732
    .local v1, rootNode:Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_0

    .line 1733
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1734
    :cond_0
    :try_start_1
    const-string v2, "xmlns"

    const-string v3, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1737
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

    .line 1738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1739
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

    .line 1740
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1731
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #rootNode:Lorg/cybergarage/xml/Node;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 525
    .local v0, node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/DeviceData;

    .line 526
    .local v1, userData:Lorg/cybergarage/upnp/xml/DeviceData;
    if-nez v1, :cond_0

    .line 527
    new-instance v1, Lorg/cybergarage/upnp/xml/DeviceData;

    .end local v1           #userData:Lorg/cybergarage/upnp/xml/DeviceData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/DeviceData;-><init>()V

    .line 528
    .restart local v1       #userData:Lorg/cybergarage/upnp/xml/DeviceData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 529
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/NodeData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 531
    :cond_0
    return-object v1
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 2039
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1340
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    goto :goto_0
.end method

.method private getNotifyDeviceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1345
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1347
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 1

    .prologue
    .line 2113
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    return-object v0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    return-object v0
.end method

.method private httpGetRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 14
    .parameter "httpReq"

    .prologue
    .line 1746
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v11

    .line 1747
    .local v11, uri:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpGetRequestRecieved = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1748
    if-nez v11, :cond_1

    .line 1749
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 1750
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 1758
    .local v5, fileByte:[B
    invoke-direct {p0, v11}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1759
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v10

    .line 1760
    .local v10, localAddr:Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_3

    .line 1761
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v10

    .line 1762
    :cond_3
    invoke-direct {p0, v10}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v5

    .line 1804
    .end local v10           #localAddr:Ljava/lang/String;
    :goto_1
    new-instance v6, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v6}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1805
    .local v6, httpRes:Lorg/cybergarage/http/HTTPResponse;
    invoke-static {v11}, Lorg/cybergarage/util/FileUtil;->isXMLFileName(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 1806
    const-string v12, "text/xml; charset=\"utf-8\""

    invoke-virtual {v6, v12}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 1807
    :cond_4
    const/16 v12, 0xc8

    invoke-virtual {v6, v12}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1808
    invoke-virtual {v6, v5}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V

    .line 1809
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 1810
    invoke-virtual {p1, v6}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 1764
    .end local v6           #httpRes:Lorg/cybergarage/http/HTTPResponse;
    :cond_5
    invoke-virtual {p0, v11}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .local v3, embDev:Lorg/cybergarage/upnp/Device;
    if-eqz v3, :cond_6

    .line 1765
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v10

    .line 1766
    .restart local v10       #localAddr:Ljava/lang/String;
    invoke-direct {v3, v10}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v5

    .line 1767
    goto :goto_1

    .line 1768
    .end local v10           #localAddr:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v11}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .local v4, embService:Lorg/cybergarage/upnp/Service;
    if-eqz v4, :cond_7

    .line 1769
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getSCPDData()[B

    move-result-object v5

    goto :goto_1

    .line 1771
    :cond_7
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v12

    const-string v13, "icon_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1772
    new-instance v6, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v6}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1773
    .restart local v6       #httpRes:Lorg/cybergarage/http/HTTPResponse;
    const/4 v8, 0x0

    .line 1774
    .local v8, icon:Lorg/cybergarage/upnp/Icon;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v9

    .line 1775
    .local v9, icons:Lorg/cybergarage/upnp/IconList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v7, v12, :cond_8

    .line 1776
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v13

    invoke-virtual {v13}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v7}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v13

    invoke-virtual {v13}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1778
    invoke-virtual {v9, v7}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v8

    .line 1782
    :cond_8
    if-eqz v8, :cond_0

    .line 1783
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/Device;->getIconStream(Lorg/cybergarage/upnp/Icon;)Ljava/io/InputStream;

    move-result-object v0

    .line 1784
    .local v0, contentIn:Ljava/io/InputStream;
    const-wide/16 v1, 0x0

    .line 1785
    .local v1, contentLen:J
    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {v8}, Lorg/cybergarage/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 1787
    const/16 v12, 0xc8

    invoke-virtual {v6, v12}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1788
    invoke-virtual {v6, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 1789
    invoke-virtual {v6, v0}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 1790
    invoke-virtual {p1, v6}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1792
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1794
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 1775
    .end local v0           #contentIn:Ljava/io/InputStream;
    .end local v1           #contentLen:J
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1799
    .end local v6           #httpRes:Lorg/cybergarage/http/HTTPResponse;
    .end local v7           #i:I
    .end local v8           #icon:Lorg/cybergarage/upnp/Icon;
    .end local v9           #icons:Lorg/cybergarage/upnp/IconList;
    :cond_a
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 1800
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto/16 :goto_0
.end method

.method private httpPostRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 2
    .parameter "httpReq"

    .prologue
    .line 1815
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isSOAPAction()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1817
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1821
    :goto_0
    return-void

    .line 1820
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method private initializeLoadedDescription()Z
    .locals 1

    .prologue
    .line 655
    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    .line 656
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setLeaseTime(I)V

    .line 657
    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 660
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->hasUDN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->updateUDN()V

    .line 663
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    .locals 2
    .parameter "ctlReq"

    .prologue
    .line 1860
    new-instance v0, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 1861
    .local v0, actRes:Lorg/cybergarage/upnp/control/ControlResponse;
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1862
    invoke-virtual {p1, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1863
    return-void
.end method

.method private invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    .locals 2
    .parameter "ctlReq"

    .prologue
    .line 1867
    new-instance v0, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 1868
    .local v0, actRes:Lorg/cybergarage/upnp/control/ControlResponse;
    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1869
    invoke-virtual {p1, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1870
    return-void
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 567
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, descriptionURI:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 569
    :cond_0
    const/4 v1, 0x0

    .line 570
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isDeviceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 672
    const-string v0, "device"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final notifyWait()V
    .locals 1

    .prologue
    .line 1362
    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 1363
    return-void
.end method

.method private setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V
    .locals 1
    .parameter "adv"

    .prologue
    .line 2118
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 2119
    return-void
.end method

.method private setDescriptionFile(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 540
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setDescriptionFile(Ljava/io/File;)V

    .line 541
    return-void
.end method

.method private setDescriptionURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 550
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setDescriptionURI(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method private setURLBase(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 773
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 774
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    const-string v3, "URLBase"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 775
    .local v1, node:Lorg/cybergarage/xml/Node;
    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 786
    .end local v1           #node:Lorg/cybergarage/xml/Node;
    :cond_0
    :goto_0
    return-void

    .line 779
    .restart local v1       #node:Lorg/cybergarage/xml/Node;
    :cond_1
    new-instance v1, Lorg/cybergarage/xml/Node;

    .end local v1           #node:Lorg/cybergarage/xml/Node;
    const-string v2, "URLBase"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 780
    .restart local v1       #node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x1

    .line 782
    .local v0, index:I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-nez v2, :cond_2

    .line 783
    const/4 v0, 0x1

    .line 784
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/cybergarage/xml/Node;->insertNode(Lorg/cybergarage/xml/Node;I)V

    goto :goto_0
.end method

.method private setUUID(Ljava/lang/String;)V
    .locals 0
    .parameter "uuid"

    .prologue
    .line 418
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    .line 419
    return-void
.end method

.method private soapActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .parameter "soapReq"

    .prologue
    .line 1836
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 1837
    .local v2, uri:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 1838
    .local v1, ctlService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 1839
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1840
    .local v0, crlReq:Lorg/cybergarage/upnp/control/ActionRequest;
    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/Device;->deviceControlRequestRecieved(Lorg/cybergarage/upnp/control/ControlRequest;Lorg/cybergarage/upnp/Service;)V

    .line 1844
    .end local v0           #crlReq:Lorg/cybergarage/upnp/control/ActionRequest;
    :goto_0
    return-void

    .line 1843
    :cond_0
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapBadActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0
.end method

.method private soapBadActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 2
    .parameter "soapReq"

    .prologue
    .line 1829
    new-instance v0, Lorg/cybergarage/soap/SOAPResponse;

    invoke-direct {v0}, Lorg/cybergarage/soap/SOAPResponse;-><init>()V

    .line 1830
    .local v0, soapRes:Lorg/cybergarage/soap/SOAPResponse;
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1831
    invoke-virtual {p1, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1832
    return-void
.end method

.method private stop(Z)Z
    .locals 5
    .parameter "doByeBye"

    .prologue
    const/4 v4, 0x1

    .line 2193
    if-ne p1, v4, :cond_0

    .line 2194
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->byebye()V

    .line 2196
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v1

    .line 2197
    .local v1, httpServerList:Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    .line 2198
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 2199
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 2201
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v2

    .line 2202
    .local v2, ssdpSearchSockList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->stop()V

    .line 2203
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->close()V

    .line 2204
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2206
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 2207
    .local v0, adv:Lorg/cybergarage/upnp/device/Advertiser;
    if-eqz v0, :cond_1

    .line 2208
    invoke-virtual {v0}, Lorg/cybergarage/util/ThreadCore;->stop()V

    .line 2209
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 2212
    :cond_1
    return v4
.end method

.method private updateUDN()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private updateURLBase(Ljava/lang/String;)V
    .locals 3
    .parameter "host"

    .prologue
    .line 790
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, urlBase:Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setURLBase(Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method private upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V
    .locals 1
    .parameter "subReq"
    .parameter "code"

    .prologue
    .line 1915
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1916
    .local v0, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setErrorResponse(I)V

    .line 1917
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1918
    return-void
.end method


# virtual methods
.method public addDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 7
    .parameter "d"

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    const-string v6, "deviceList"

    invoke-virtual {v5, v6}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 495
    .local v0, deviceListNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0           #deviceListNode:Lorg/cybergarage/xml/Node;
    const-string v5, "deviceList"

    invoke-direct {v0, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 498
    .restart local v0       #deviceListNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 500
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 501
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 502
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    if-nez v5, :cond_1

    .line 503
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v5, "root"

    invoke-direct {v3, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 504
    .local v3, root:Lorg/cybergarage/xml/Node;
    const-string v5, ""

    const-string v6, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v3, v5, v6}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v5, "specVersion"

    invoke-direct {v4, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 506
    .local v4, spec:Lorg/cybergarage/xml/Node;
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v5, "major"

    invoke-direct {v1, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, maj:Lorg/cybergarage/xml/Node;
    const-string v5, "1"

    invoke-virtual {v1, v5}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 508
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v5, "minor"

    invoke-direct {v2, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, min:Lorg/cybergarage/xml/Node;
    const-string v5, "0"

    invoke-virtual {v2, v5}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v4, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 511
    invoke-virtual {v4, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 512
    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 513
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 515
    .end local v1           #maj:Lorg/cybergarage/xml/Node;
    .end local v2           #min:Lorg/cybergarage/xml/Node;
    .end local v3           #root:Lorg/cybergarage/xml/Node;
    .end local v4           #spec:Lorg/cybergarage/xml/Node;
    :cond_1
    return-void
.end method

.method public addService(Lorg/cybergarage/upnp/Service;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 474
    .local v0, serviceListNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0           #serviceListNode:Lorg/cybergarage/xml/Node;
    const-string v1, "serviceList"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 476
    .restart local v0       #serviceListNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 478
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 479
    return-void
.end method

.method public announce()V
    .locals 8

    .prologue
    .line 1416
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 1417
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1419
    .local v1, binds:[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1420
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 1421
    .local v0, bindAddresses:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 1422
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 1421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1425
    .end local v0           #bindAddresses:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v5

    .line 1426
    .local v5, nHostAddrs:I
    new-array v0, v5, [Ljava/lang/String;

    .line 1427
    .restart local v0       #bindAddresses:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1428
    invoke-static {v4}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 1427
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1431
    .end local v4           #n:I
    .end local v5           #nHostAddrs:I
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 1432
    aget-object v7, v0, v3

    if-eqz v7, :cond_2

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 1431
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1434
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 1435
    .local v6, ssdpCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v6, :cond_2

    .line 1436
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1435
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1439
    .end local v2           #i:I
    .end local v6           #ssdpCount:I
    :cond_4
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 16
    .parameter "bindAddr"

    .prologue
    .line 1366
    invoke-virtual/range {p0 .. p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1368
    .local v4, devLocation:Ljava/lang/String;
    new-instance v13, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v13, ssdpSock:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    new-instance v12, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1371
    .local v12, ssdpReq:Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/cybergarage/http/HTTPPacket;->setServer(Ljava/lang/String;)V

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v14

    invoke-virtual {v12, v14}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setLeaseTime(I)V

    .line 1373
    invoke-virtual {v12, v4}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setLocation(Ljava/lang/String;)V

    .line 1374
    const-string v14, "ssdp:alive"

    invoke-virtual {v12, v14}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNTS(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1378
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v5

    .line 1379
    .local v5, devNT:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v7

    .line 1380
    .local v7, devUSN:Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v12, v7}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v13, v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v6

    .line 1385
    .local v6, devUDN:Ljava/lang/String;
    invoke-virtual {v12, v6}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v12, v6}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v13, v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1391
    .end local v5           #devNT:Ljava/lang/String;
    .end local v6           #devUDN:Ljava/lang/String;
    .end local v7           #devUSN:Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v5

    .line 1392
    .restart local v5       #devNT:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v7

    .line 1393
    .restart local v7       #devUSN:Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v12, v7}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v13, v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1398
    invoke-virtual {v13}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->close()Z

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v11

    .line 1401
    .local v11, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v10

    .line 1402
    .local v10, serviceCnt:I
    const/4 v8, 0x0

    .local v8, n:I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 1403
    invoke-virtual {v11, v8}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v9

    .line 1404
    .local v9, service:Lorg/cybergarage/upnp/Service;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/cybergarage/upnp/Service;->announce(Ljava/lang/String;)V

    .line 1402
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1407
    .end local v9           #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 1408
    .local v3, childDeviceList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1409
    .local v2, childDeviceCnt:I
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_2

    .line 1410
    invoke-virtual {v3, v8}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1411
    .local v1, childDevice:Lorg/cybergarage/upnp/Device;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1409
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1413
    .end local v1           #childDevice:Lorg/cybergarage/upnp/Device;
    :cond_2
    return-void
.end method

.method public byebye()V
    .locals 8

    .prologue
    .line 1484
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1486
    .local v1, binds:[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1487
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 1488
    .local v0, bindAddresses:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 1489
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1492
    .end local v0           #bindAddresses:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v5

    .line 1493
    .local v5, nHostAddrs:I
    new-array v0, v5, [Ljava/lang/String;

    .line 1494
    .restart local v0       #bindAddresses:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1495
    invoke-static {v4}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 1494
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1499
    .end local v4           #n:I
    .end local v5           #nHostAddrs:I
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 1500
    aget-object v7, v0, v3

    if-eqz v7, :cond_2

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1499
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1502
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 1503
    .local v6, ssdpCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v6, :cond_2

    .line 1504
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1503
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1506
    .end local v2           #i:I
    .end local v6           #ssdpCount:I
    :cond_4
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 13
    .parameter "bindAddr"

    .prologue
    .line 1443
    new-instance v10, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v10, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v10, ssdpSock:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    new-instance v9, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v9}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1446
    .local v9, ssdpReq:Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    const-string v11, "ssdp:byebye"

    invoke-virtual {v9, v11}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNTS(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1450
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v3

    .line 1451
    .local v3, devNT:Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v4

    .line 1452
    .local v4, devUSN:Ljava/lang/String;
    invoke-virtual {v9, v3}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v9, v4}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v10, v9}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1458
    .end local v3           #devNT:Ljava/lang/String;
    .end local v4           #devUSN:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 1459
    .restart local v3       #devNT:Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 1460
    .restart local v4       #devUSN:Ljava/lang/String;
    invoke-virtual {v9, v3}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setNT(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v9, v4}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setUSN(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v10, v9}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1465
    invoke-virtual {v10}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->close()Z

    .line 1467
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v8

    .line 1468
    .local v8, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v7

    .line 1469
    .local v7, serviceCnt:I
    const/4 v5, 0x0

    .local v5, n:I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1470
    invoke-virtual {v8, v5}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v6

    .line 1471
    .local v6, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v6, p1}, Lorg/cybergarage/upnp/Service;->byebye(Ljava/lang/String;)V

    .line 1469
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1474
    .end local v6           #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1475
    .local v2, childDeviceList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1476
    .local v1, childDeviceCnt:I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 1477
    invoke-virtual {v2, v5}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1478
    .local v0, childDevice:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1476
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1480
    .end local v0           #childDevice:Lorg/cybergarage/upnp/Device;
    :cond_2
    return-void
.end method

.method public deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .parameter "ssdpPacket"

    .prologue
    .line 1605
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1606
    return-void
.end method

.method public deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 19
    .parameter "ssdpPacket"

    .prologue
    .line 1549
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v16

    .line 1551
    .local v16, ssdpST:Ljava/lang/String;
    if-nez v16, :cond_1

    .line 1601
    :cond_0
    return-void

    .line 1554
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v10

    .line 1556
    .local v10, isRootDevice:Z
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v9

    .line 1557
    .local v9, devUSN:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 1558
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "::upnp:rootdevice"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1560
    :cond_2
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1561
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v6

    .line 1562
    .local v6, devNT:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    const/4 v12, 0x3

    .line 1563
    .local v12, repeatCnt:I
    :goto_0
    const/4 v11, 0x0

    .local v11, n:I
    :goto_1
    if-ge v11, v12, :cond_5

    .line 1564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1563
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1562
    .end local v11           #n:I
    .end local v12           #repeatCnt:I
    :cond_3
    const/4 v12, 0x2

    goto :goto_0

    .line 1566
    .end local v6           #devNT:Ljava/lang/String;
    :cond_4
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1567
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    .line 1568
    const-string v17, "upnp:rootdevice"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1588
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v15

    .line 1589
    .local v15, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v14

    .line 1590
    .local v14, serviceCnt:I
    const/4 v11, 0x0

    .restart local v11       #n:I
    :goto_3
    if-ge v11, v14, :cond_9

    .line 1591
    invoke-virtual {v15, v11}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v13

    .line 1592
    .local v13, service:Lorg/cybergarage/upnp/Service;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/Service;->serviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)Z

    .line 1590
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1570
    .end local v11           #n:I
    .end local v13           #service:Lorg/cybergarage/upnp/Service;
    .end local v14           #serviceCnt:I
    .end local v15           #serviceList:Lorg/cybergarage/upnp/ServiceList;
    :cond_6
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isUUIDDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v8

    .line 1572
    .local v8, devUDN:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1573
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1575
    .end local v8           #devUDN:Ljava/lang/String;
    :cond_7
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isURNDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 1577
    .local v7, devType:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1579
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1580
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1583
    .end local v7           #devType:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v8

    .line 1584
    .restart local v8       #devUDN:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 1595
    .end local v8           #devUDN:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v14       #serviceCnt:I
    .restart local v15       #serviceList:Lorg/cybergarage/upnp/ServiceList;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v5

    .line 1596
    .local v5, childDeviceList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1597
    .local v4, childDeviceCnt:I
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_0

    .line 1598
    invoke-virtual {v5, v11}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 1599
    .local v3, childDevice:Lorg/cybergarage/upnp/Device;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1597
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method public getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "urlString"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, baseURLStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 352
    .local v1, locationURLStr:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 353
    .local v2, rootDev:Lorg/cybergarage/upnp/Device;
    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "urlString"
    .parameter "baseURLStr"
    .parameter "locationURLStr"

    .prologue
    const/4 v9, 0x1

    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 272
    :cond_0
    const-string p1, ""

    .line 344
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 275
    .restart local p1
    :cond_2
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 276
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 278
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 280
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_6

    .line 281
    :cond_3
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 282
    const-string v7, "/"

    invoke-virtual {p3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 283
    :cond_4
    const-string v7, "/"

    invoke-virtual {p3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, strings:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, absUrl:Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object p1

    goto :goto_0

    .line 292
    .end local v0           #absUrl:Ljava/lang/String;
    .end local v5           #strings:[Ljava/lang/String;
    .end local v6           #url:Ljava/net/URL;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0       #absUrl:Ljava/lang/String;
    :try_start_2
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto :goto_0

    .line 297
    .end local v6           #url:Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 300
    :goto_1
    invoke-static {p3, p1}, Lorg/cybergarage/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :try_start_3
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    goto/16 :goto_0

    .line 305
    .end local v6           #url:Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 308
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 309
    .local v4, rootDev:Lorg/cybergarage/upnp/Device;
    if-eqz v4, :cond_6

    .line 310
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, locationHost:Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v3

    .line 313
    .local v3, locationPort:I
    invoke-static {v2, v3}, Lorg/cybergarage/http/HTTP;->getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 318
    .end local v0           #absUrl:Ljava/lang/String;
    .end local v1           #location:Ljava/lang/String;
    .end local v2           #locationHost:Ljava/lang/String;
    .end local v3           #locationPort:I
    .end local v4           #rootDev:Lorg/cybergarage/upnp/Device;
    :cond_6
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 319
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 320
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .restart local v0       #absUrl:Ljava/lang/String;
    :try_start_4
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object p1

    goto/16 :goto_0

    .line 328
    .end local v0           #absUrl:Ljava/lang/String;
    .end local v6           #url:Ljava/net/URL;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0       #absUrl:Ljava/lang/String;
    :try_start_5
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object p1

    goto/16 :goto_0

    .line 333
    .end local v6           #url:Ljava/net/URL;
    :catch_3
    move-exception v7

    .line 336
    :goto_2
    invoke-static {p2, p1}, Lorg/cybergarage/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :try_start_6
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object p1

    goto/16 :goto_0

    .line 341
    .end local v6           #url:Ljava/net/URL;
    :catch_4
    move-exception v7

    goto/16 :goto_0

    .line 325
    :catch_5
    move-exception v7

    goto :goto_2

    .line 289
    .restart local v5       #strings:[Ljava/lang/String;
    :catch_6
    move-exception v7

    goto/16 :goto_1
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 14
    .parameter "name"

    .prologue
    .line 1252
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v11

    .line 1253
    .local v11, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v10

    .line 1254
    .local v10, serviceCnt:I
    const/4 v8, 0x0

    .local v8, n:I
    :goto_0
    if-ge v8, v10, :cond_4

    .line 1255
    invoke-virtual {v11, v8}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v9

    .line 1256
    .local v9, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v9}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v2

    .line 1257
    .local v2, actionList:Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1258
    .local v1, actionCnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v1, :cond_3

    .line 1259
    invoke-virtual {v2, v7}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 1260
    .local v0, action:Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1261
    .local v3, actionName:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1258
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1263
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1277
    .end local v0           #action:Lorg/cybergarage/upnp/Action;
    .end local v1           #actionCnt:I
    .end local v2           #actionList:Lorg/cybergarage/upnp/ActionList;
    .end local v3           #actionName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #service:Lorg/cybergarage/upnp/Service;
    :cond_2
    :goto_2
    return-object v0

    .line 1254
    .restart local v1       #actionCnt:I
    .restart local v2       #actionList:Lorg/cybergarage/upnp/ActionList;
    .restart local v7       #i:I
    .restart local v9       #service:Lorg/cybergarage/upnp/Service;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1268
    .end local v1           #actionCnt:I
    .end local v2           #actionList:Lorg/cybergarage/upnp/ActionList;
    .end local v7           #i:I
    .end local v9           #service:Lorg/cybergarage/upnp/Service;
    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v6

    .line 1269
    .local v6, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1270
    .local v5, devCnt:I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_5

    .line 1271
    invoke-virtual {v6, v8}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 1272
    .local v4, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Device;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 1273
    .restart local v0       #action:Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_2

    .line 1270
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1277
    .end local v0           #action:Lorg/cybergarage/upnp/Action;
    .end local v4           #dev:Lorg/cybergarage/upnp/Device;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getAddressUpdateID()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/cybergarage/upnp/Device;->addressUpdateID:I

    return v0
.end method

.method public getDescriptionFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    .line 576
    .local v0, descriptionFile:Ljava/io/File;
    if-nez v0, :cond_0

    .line 577
    const-string v1, ""

    .line 578
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 7
    .parameter "name"

    .prologue
    .line 1046
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 1047
    .local v3, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1048
    .local v2, devCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1049
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1050
    .local v1, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1056
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    :goto_1
    return-object v1

    .line 1052
    .restart local v1       #dev:Lorg/cybergarage/upnp/Device;
    :cond_0
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1053
    .local v0, cdev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1054
    goto :goto_1

    .line 1048
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1056
    .end local v0           #cdev:Lorg/cybergarage/upnp/Device;
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 7
    .parameter "uri"

    .prologue
    .line 1061
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 1062
    .local v3, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1063
    .local v2, devCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1064
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1065
    .local v1, dev:Lorg/cybergarage/upnp/Device;
    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1071
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    :goto_1
    return-object v1

    .line 1067
    .restart local v1       #dev:Lorg/cybergarage/upnp/Device;
    :cond_0
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1068
    .local v0, cdev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1069
    goto :goto_1

    .line 1063
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1071
    .end local v0           #cdev:Lorg/cybergarage/upnp/Device;
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 8

    .prologue
    .line 1016
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 1017
    .local v1, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "deviceList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1018
    .local v2, devListNode:Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_1

    .line 1028
    :cond_0
    return-object v1

    .line 1020
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 1021
    .local v4, nNode:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1022
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1023
    .local v5, node:Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Device;->isDeviceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1021
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {v0, v5}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 1026
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getDeviceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 816
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1627
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 1619
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Lorg/cybergarage/upnp/Icon;
    .locals 2
    .parameter "n"

    .prologue
    .line 1303
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v0

    .line 1304
    .local v0, iconList:Lorg/cybergarage/upnp/IconList;
    if-gez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    .line 1305
    const/4 v1, 0x0

    .line 1306
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconList()Lorg/cybergarage/upnp/IconList;
    .locals 8

    .prologue
    .line 1286
    new-instance v1, Lorg/cybergarage/upnp/IconList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/IconList;-><init>()V

    .line 1287
    .local v1, iconList:Lorg/cybergarage/upnp/IconList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "iconList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1288
    .local v2, iconListNode:Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_1

    .line 1298
    :cond_0
    return-object v1

    .line 1290
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 1291
    .local v4, nNode:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1292
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1293
    .local v5, node:Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Icon;->isIconNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1291
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1295
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Icon;

    invoke-direct {v0, v5}, Lorg/cybergarage/upnp/Icon;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 1296
    .local v0, icon:Lorg/cybergarage/upnp/Icon;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getIconStream(Lorg/cybergarage/upnp/Icon;)Ljava/io/InputStream;
    .locals 3
    .parameter "icon"

    .prologue
    .line 1670
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, sUrl:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1674
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2231
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 2232
    .local v0, ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-nez v0, :cond_0

    .line 2233
    const-string v1, ""

    .line 2234
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getLeaseTime()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 710
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 711
    .local v0, packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 713
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/xml/DeviceData;->getLocation()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "host"

    .prologue
    .line 1333
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufactureURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 871
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 903
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 919
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 935
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2091
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2107
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v2, 0x0

    .line 465
    :goto_0
    return-object v2

    .line 461
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 462
    .local v1, devNode:Lorg/cybergarage/xml/Node;
    const/4 v0, 0x0

    .line 464
    .local v0, aux:Lorg/cybergarage/xml/Node;
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 465
    new-instance v2, Lorg/cybergarage/upnp/Device;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 437
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 438
    .local v1, rootNode:Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-object v2

    .line 440
    :cond_1
    const-string v3, "device"

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 441
    .local v0, devNode:Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 443
    new-instance v2, Lorg/cybergarage/upnp/Device;

    invoke-direct {v2, v1, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPAnnounceCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 405
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isWirelessMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 406
    const/4 v0, 0x4

    .line 407
    :cond_0
    return v0
.end method

.method public getSSDPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 2075
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1636
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 1645
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 1646
    return-void
.end method

.method public getSSDPIPv6MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1654
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv6MulticastAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 1663
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 1664
    return-void
.end method

.method public getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 2054
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPPort()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 951
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .parameter "name"

    .prologue
    .line 1097
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1098
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1099
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1100
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1101
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isService(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1114
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1099
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1105
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1106
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1107
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1108
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1109
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1110
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1107
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1114
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .parameter "searchUrl"

    .prologue
    .line 1141
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1142
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1143
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1144
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1145
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isControlURL(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1158
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1143
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1149
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1150
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1151
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1152
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1153
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1154
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1151
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1158
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .parameter "searchUrl"

    .prologue
    .line 1163
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1164
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1165
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1166
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1167
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isEventSubURL(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1180
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1165
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1171
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1172
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1173
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1174
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1175
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1176
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1173
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1180
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .parameter "searchUrl"

    .prologue
    .line 1119
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1120
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1121
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1122
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1123
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isSCPDURL(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1136
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1121
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1127
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1128
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1129
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1130
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1131
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1132
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1129
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1136
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceList()Lorg/cybergarage/upnp/ServiceList;
    .locals 8

    .prologue
    .line 1080
    new-instance v4, Lorg/cybergarage/upnp/ServiceList;

    invoke-direct {v4}, Lorg/cybergarage/upnp/ServiceList;-><init>()V

    .line 1081
    .local v4, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "serviceList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1082
    .local v5, serviceListNode:Lorg/cybergarage/xml/Node;
    if-nez v5, :cond_1

    .line 1092
    :cond_0
    return-object v4

    .line 1084
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v1

    .line 1085
    .local v1, nNode:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1086
    invoke-virtual {v5, v0}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1087
    .local v2, node:Lorg/cybergarage/xml/Node;
    invoke-static {v2}, Lorg/cybergarage/upnp/Service;->isServiceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1085
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_2
    new-instance v3, Lorg/cybergarage/upnp/Service;

    invoke-direct {v3, v2}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 1090
    .local v3, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getSmallestIcon()Lorg/cybergarage/upnp/Icon;
    .locals 7

    .prologue
    .line 1311
    const/4 v4, 0x0

    .line 1312
    .local v4, smallestIcon:Lorg/cybergarage/upnp/Icon;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v2

    .line 1313
    .local v2, iconList:Lorg/cybergarage/upnp/IconList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1314
    .local v1, iconCount:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1315
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v0

    .line 1316
    .local v0, icon:Lorg/cybergarage/upnp/Icon;
    if-nez v4, :cond_1

    .line 1317
    move-object v4, v0

    .line 1314
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1320
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Icon;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Icon;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1321
    move-object v4, v0

    goto :goto_1

    .line 1324
    .end local v0           #icon:Lorg/cybergarage/upnp/Icon;
    :cond_2
    return-object v4
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 1
    .parameter "name"

    .prologue
    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 10
    .parameter "serviceType"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    .line 1212
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move-object v7, v8

    .line 1238
    :cond_0
    :goto_0
    return-object v7

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1216
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1217
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1218
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1220
    .local v4, service:Lorg/cybergarage/upnp/Service;
    if-eqz p1, :cond_3

    .line 1221
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1217
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1224
    :cond_3
    invoke-virtual {v4, p2}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v7

    .line 1225
    .local v7, stateVar:Lorg/cybergarage/upnp/StateVariable;
    if-eqz v7, :cond_2

    goto :goto_0

    .line 1229
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    .end local v7           #stateVar:Lorg/cybergarage/upnp/StateVariable;
    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1230
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1231
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 1232
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1233
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v7

    .line 1234
    .restart local v7       #stateVar:Lorg/cybergarage/upnp/StateVariable;
    if-nez v7, :cond_0

    .line 1231
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v7           #stateVar:Lorg/cybergarage/upnp/StateVariable;
    :cond_5
    move-object v7, v8

    .line 1238
    goto :goto_0
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 10
    .parameter "uuid"

    .prologue
    .line 1185
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1186
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1187
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1188
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1189
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 1190
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1203
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    .end local v7           #sid:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 1187
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    .restart local v7       #sid:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1194
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    .end local v7           #sid:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1195
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1196
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1197
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1198
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1199
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1196
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1203
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getTimeStamp()J
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 746
    .local v0, packet:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getTimeStamp()J

    move-result-wide v1

    .line 748
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 991
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2306
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasUDN()Z
    .locals 2

    .prologue
    .line 972
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, udn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 974
    :cond_0
    const/4 v1, 0x0

    .line 975
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 11
    .parameter "httpReq"

    .prologue
    const/4 v10, 0x1

    .line 1679
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v8

    if-ne v8, v10, :cond_0

    .line 1680
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 1682
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isGetRequest()Z

    move-result v8

    if-eq v8, v10, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1683
    :cond_1
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpGetRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1724
    :cond_2
    :goto_0
    return-void

    .line 1686
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isPostRequest()Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1687
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpPostRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0

    .line 1690
    :cond_4
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/DeviceIcons"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1691
    new-instance v3, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v3}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1692
    .local v3, httpRes:Lorg/cybergarage/http/HTTPResponse;
    const/4 v5, 0x0

    .line 1693
    .local v5, icon:Lorg/cybergarage/upnp/Icon;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v6

    .line 1694
    .local v6, icons:Lorg/cybergarage/upnp/IconList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 1695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v9

    invoke-virtual {v9}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v6, v4}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1697
    invoke-virtual {v6, v4}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v5

    .line 1701
    :cond_5
    if-eqz v5, :cond_2

    .line 1702
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/Device;->getIconStream(Lorg/cybergarage/upnp/Icon;)Ljava/io/InputStream;

    move-result-object v0

    .line 1703
    .local v0, contentIn:Ljava/io/InputStream;
    const-wide/16 v1, 0x0

    .line 1704
    .local v1, contentLen:J
    if-eqz v0, :cond_2

    .line 1705
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 1706
    const/16 v8, 0xc8

    invoke-virtual {v3, v8}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1707
    invoke-virtual {v3, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 1708
    invoke-virtual {v3, v0}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 1709
    invoke-virtual {p1, v3}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1711
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1713
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 1694
    .end local v0           #contentIn:Ljava/io/InputStream;
    .end local v1           #contentLen:J
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1717
    .end local v3           #httpRes:Lorg/cybergarage/http/HTTPResponse;
    .end local v4           #i:I
    .end local v5           #icon:Lorg/cybergarage/upnp/Icon;
    .end local v6           #icons:Lorg/cybergarage/upnp/IconList;
    :cond_7
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isSubscribeRequest()Z

    move-result v8

    if-eq v8, v10, :cond_8

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v8

    if-ne v8, v10, :cond_9

    .line 1718
    :cond_8
    new-instance v7, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v7, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1719
    .local v7, subReq:Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v7}, Lorg/cybergarage/upnp/Device;->deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto/16 :goto_0

    .line 1723
    .end local v7           #subReq:Lorg/cybergarage/upnp/event/SubscriptionRequest;
    :cond_9
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto/16 :goto_0
.end method

.method public isDevice(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1033
    if-nez p1, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 1036
    goto :goto_0

    .line 1037
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    .line 1038
    goto :goto_0

    .line 1039
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1040
    goto :goto_0
.end method

.method public isDeviceType(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 823
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 5

    .prologue
    .line 758
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v0

    .line 759
    .local v0, elipsedTime:J
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    int-to-long v2, v4

    .line 760
    .local v2, leaseTime:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 761
    const/4 v4, 0x1

    .line 762
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isNMPRMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 382
    .local v0, devNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "INMPR03"

    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRootDevice()Z
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 2222
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelessMode()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public loadDescription(Ljava/io/File;)Z
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 634
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 635
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 636
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v1           #parser:Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 637
    .end local v0           #e:Lorg/cybergarage/xml/ParserException;
    .restart local v1       #parser:Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 638
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 639
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 646
    const/4 v2, 0x0

    .line 650
    :goto_0
    return v2

    .line 648
    :cond_2
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 650
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/io/InputStream;)Z
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 588
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 589
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 590
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v1           #parser:Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 591
    .end local v0           #e:Lorg/cybergarage/xml/ParserException;
    .restart local v1       #parser:Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 592
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 593
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 600
    const/4 v2, 0x0

    .line 604
    :goto_0
    return v2

    .line 602
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 604
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/lang/String;)Z
    .locals 4
    .parameter "descString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 610
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 611
    .local v1, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 612
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 613
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v1           #parser:Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 614
    .end local v0           #e:Lorg/cybergarage/xml/ParserException;
    .restart local v1       #parser:Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 615
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 616
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 622
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 623
    const/4 v2, 0x0

    .line 627
    :goto_0
    return v2

    .line 625
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 627
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 258
    return-void
.end method

.method public postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "ssdpPacket"
    .parameter "st"
    .parameter "usn"

    .prologue
    const/4 v10, 0x1

    .line 1515
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, localAddr:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v5

    .line 1517
    .local v5, rootDev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1519
    .local v6, rootDevLocation:Ljava/lang/String;
    new-instance v8, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;

    invoke-direct {v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;-><init>()V

    .line 1520
    .local v8, ssdpRes:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setLeaseTime(I)V

    .line 1521
    sget-object v11, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Lorg/cybergarage/http/HTTPPacket;->setDate(Ljava/util/Calendar;)V

    .line 1522
    invoke-virtual {v8, p2}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setST(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v8, p3}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setUSN(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v8, v6}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setLocation(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setMYNAME(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMX()I

    move-result v2

    .line 1529
    .local v2, mx:I
    mul-int/lit16 v11, v2, 0x3e8

    invoke-static {v11}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 1532
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    .line 1533
    .local v3, remoteAddr:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v4

    .line 1534
    .local v4, remotePort:I
    const/16 v11, 0x400

    if-le v4, v11, :cond_0

    const/16 v11, 0x76c

    if-ne v4, v11, :cond_2

    .line 1535
    :cond_0
    const/4 v10, 0x0

    .line 1544
    :cond_1
    return v10

    .line 1537
    :cond_2
    new-instance v9, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 1538
    .local v9, ssdpResSock:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v11

    if-ne v11, v10, :cond_3

    .line 1539
    invoke-virtual {v8}, Lorg/cybergarage/http/HTTPResponse;->print()V

    .line 1540
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v7

    .line 1541
    .local v7, ssdpCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1542
    invoke-virtual {v9, v3, v4, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z

    .line 1541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2243
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 2244
    .local v3, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2245
    .local v1, nServices:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2246
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 2247
    .local v2, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 2245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2249
    .end local v2           #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    return-void
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "includeSubDevices"

    .prologue
    const/4 v4, 0x1

    .line 2268
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 2269
    if-ne p2, v4, :cond_0

    .line 2270
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2271
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2272
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2273
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2274
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, v4}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;Z)V

    .line 2272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2277
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v1           #devCnt:I
    .end local v2           #devList:Lorg/cybergarage/upnp/DeviceList;
    .end local v3           #n:I
    :cond_0
    return-void
.end method

.method public setDeviceNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 194
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 195
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 811
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 834
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public setHTTPBindAddress([Ljava/net/InetAddress;)V
    .locals 1
    .parameter "inets"

    .prologue
    .line 1623
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPBindAddress([Ljava/net/InetAddress;)V

    .line 1624
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 1
    .parameter "port"

    .prologue
    .line 1614
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPPort(I)V

    .line 1615
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 722
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setLeaseTime(I)V

    .line 723
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 724
    .local v0, adv:Lorg/cybergarage/upnp/device/Advertiser;
    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    .line 726
    invoke-virtual {v0}, Lorg/cybergarage/util/ThreadCore;->restart()V

    .line 728
    :cond_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 705
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setLocation(Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public setManufacture(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 850
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public setManufactureURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 866
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 882
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 898
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 914
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public setModelURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 930
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public setMulticastIPv4Address(Ljava/lang/String;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 2083
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 2084
    return-void
.end method

.method public setMulticastIPv6Address(Ljava/lang/String;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 2099
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 2100
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 368
    .local v0, devNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 371
    const-string v1, "INMPR03"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0

    .line 375
    :cond_1
    const-string v1, "INMPR03"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1002
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2253
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 2254
    .local v3, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2255
    .local v1, nServices:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2256
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 2257
    .local v2, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 2255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    .end local v2           #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "includeSubDevices"

    .prologue
    const/4 v4, 0x1

    .line 2282
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 2283
    if-ne p2, v4, :cond_0

    .line 2284
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2285
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2286
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2287
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2288
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, v4}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;Z)V

    .line 2286
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2291
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v1           #devCnt:I
    .end local v2           #devList:Lorg/cybergarage/upnp/DeviceList;
    .end local v3           #n:I
    :cond_0
    return-void
.end method

.method public setRootNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 189
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 190
    return-void
.end method

.method public setSSDPBindAddress([Ljava/net/InetAddress;)V
    .locals 1
    .parameter "inets"

    .prologue
    .line 2065
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPBindAddress([Ljava/net/InetAddress;)V

    .line 2066
    return-void
.end method

.method public setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 689
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 690
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 1
    .parameter "port"

    .prologue
    .line 2046
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPPort(I)V

    .line 2047
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 946
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public setUPC(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 986
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 2301
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 2302
    return-void
.end method

.method public setWirelessMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 395
    iput-boolean p1, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    .line 396
    return-void
.end method

.method public start()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2128
    invoke-direct {p0, v9}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    .line 2129
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v5

    .line 2130
    .local v5, lastAddrs:[Ljava/net/InetAddress;
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/cybergarage/net/HostInterface;->getInetAddress(I[Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2131
    .local v0, addrs:[Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setHTTPBindAddress([Ljava/net/InetAddress;)V

    .line 2133
    if-eqz v5, :cond_0

    .line 2134
    array-length v10, v5

    array-length v11, v0

    if-eq v10, v11, :cond_2

    .line 2135
    iget v10, p0, Lorg/cybergarage/upnp/Device;->addressUpdateID:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/cybergarage/upnp/Device;->addressUpdateID:I

    .line 2149
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 2150
    .local v6, retryCnt:I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v2

    .line 2151
    .local v2, bindPort:I
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v3

    .line 2152
    .local v3, httpServerList:Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v3, v0}, Lorg/cybergarage/http/HTTPServerList;->setBindAddresses([Ljava/net/InetAddress;)V

    .line 2153
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->setBindAddresses([Ljava/net/InetAddress;)V

    .line 2154
    :goto_1
    invoke-virtual {v3, v2}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2155
    add-int/lit8 v6, v6, 0x1

    .line 2156
    const/16 v10, 0x64

    if-ge v10, v6, :cond_4

    .line 2188
    :cond_1
    :goto_2
    return v8

    .line 2137
    .end local v2           #bindPort:I
    .end local v3           #httpServerList:Lorg/cybergarage/http/HTTPServerList;
    .end local v6           #retryCnt:I
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v10, v5

    if-ge v4, v10, :cond_0

    .line 2138
    aget-object v10, v5, v4

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2139
    iget v10, p0, Lorg/cybergarage/upnp/Device;->addressUpdateID:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/cybergarage/upnp/Device;->addressUpdateID:I

    goto :goto_0

    .line 2137
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2158
    .end local v4           #i:I
    .restart local v2       #bindPort:I
    .restart local v3       #httpServerList:Lorg/cybergarage/http/HTTPServerList;
    .restart local v6       #retryCnt:I
    :cond_4
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 2159
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v2

    goto :goto_1

    .line 2161
    :cond_5
    invoke-virtual {v3, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 2162
    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPServerList;->start()V

    .line 2168
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v7

    .line 2169
    .local v7, ssdpSearchSockList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->open()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2171
    invoke-virtual {v7, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V

    .line 2172
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->start()V

    .line 2178
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    .line 2184
    new-instance v1, Lorg/cybergarage/upnp/device/Advertiser;

    invoke-direct {v1, p0}, Lorg/cybergarage/upnp/device/Advertiser;-><init>(Lorg/cybergarage/upnp/Device;)V

    .line 2185
    .local v1, adv:Lorg/cybergarage/upnp/device/Advertiser;
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 2186
    invoke-virtual {v1}, Lorg/cybergarage/util/ThreadCore;->start()V

    move v8, v9

    .line 2188
    goto :goto_2
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 2217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 263
    return-void
.end method
