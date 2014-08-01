.class public Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
.super Ljava/lang/Object;
.source "ID3Frame.java"


# static fields
.field public static final TIT1:Ljava/lang/String; = "TIT1"

.field public static final TIT2:Ljava/lang/String; = "TIT2"

.field public static final TIT3:Ljava/lang/String; = "TIT3"

.field public static final TPE1:Ljava/lang/String; = "TPE1"

.field public static final TPE2:Ljava/lang/String; = "TPE2"

.field public static final TPE3:Ljava/lang/String; = "TPE3"

.field public static final TPE4:Ljava/lang/String; = "TPE4"


# instance fields
.field private data:[B

.field private flag:I

.field private id:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setID(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setFlag(I)V

    .line 41
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setSize(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->data:[B

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->flag:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->size:I

    return v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->data:[B

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public setData([B)V
    .locals 0
    .parameter "val"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->data:[B

    .line 95
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 65
    iput p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->flag:I

    .line 66
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 51
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 79
    iput p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->size:I

    .line 80
    return-void
.end method
