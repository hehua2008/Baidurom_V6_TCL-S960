.class public Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;
.super Ljava/lang/Object;
.source "AVTransportInfo.java"


# instance fields
.field private instanceID:I

.field private uri:Ljava/lang/String;

.field private uriMetaData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->setInstanceID(I)V

    .line 27
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->setURI(Ljava/lang/String;)V

    .line 28
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->setURIMetaData(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getInstanceID()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->instanceID:I

    return v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getURIMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->uriMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public setInstanceID(I)V
    .locals 0
    .parameter "instanceID"

    .prologue
    .line 42
    iput p1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->instanceID:I

    .line 43
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->uri:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setURIMetaData(Ljava/lang/String;)V
    .locals 0
    .parameter "uriMetaData"

    .prologue
    .line 70
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;->uriMetaData:Ljava/lang/String;

    .line 71
    return-void
.end method
