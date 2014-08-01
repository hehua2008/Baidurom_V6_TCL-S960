.class public Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# static fields
.field public static final INPUT:Ljava/lang/String; = "Input"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OUTPUT:Ljava/lang/String; = "Output"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"


# instance fields
.field private direction:Ljava/lang/String;

.field private id:I

.field private peerConnectionID:I

.field private peerConnectionManager:Ljava/lang/String;

.field private protocolInfo:Ljava/lang/String;

.field private rcsId:I

.field private status:Ljava/lang/String;

.field private transId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setID(I)V

    .line 36
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setRcsID(I)V

    .line 37
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setAVTransportID(I)V

    .line 38
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setProtocolInfo(Ljava/lang/String;)V

    .line 39
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setPeerConnectionManager(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setPeerConnectionID(I)V

    .line 41
    const-string v0, "Output"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setDirection(Ljava/lang/String;)V

    .line 42
    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->setStatus(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getAVTransportID()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->transId:I

    return v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->id:I

    return v0
.end method

.method public getPeerConnectionID()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->peerConnectionID:I

    return v0
.end method

.method public getPeerConnectionManager()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->peerConnectionManager:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->protocolInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->rcsId:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAVTransportID(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 85
    iput p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->transId:I

    .line 86
    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 149
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->direction:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    iput p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->id:I

    .line 54
    return-void
.end method

.method public setPeerConnectionID(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 133
    iput p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->peerConnectionID:I

    .line 134
    return-void
.end method

.method public setPeerConnectionManager(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 117
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->peerConnectionManager:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setProtocolInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 101
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->protocolInfo:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setRcsID(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 69
    iput p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->rcsId:I

    .line 70
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 165
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->status:Ljava/lang/String;

    .line 166
    return-void
.end method
