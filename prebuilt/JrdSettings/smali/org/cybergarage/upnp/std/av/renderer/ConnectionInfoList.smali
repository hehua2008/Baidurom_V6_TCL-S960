.class public Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;
.super Ljava/util/Vector;
.source "ConnectionInfoList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    .locals 1
    .parameter "n"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;

    return-object v0
.end method
