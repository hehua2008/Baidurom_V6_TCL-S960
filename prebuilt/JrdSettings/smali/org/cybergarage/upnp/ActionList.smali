.class public Lorg/cybergarage/upnp/ActionList;
.super Ljava/util/Vector;
.source "ActionList.java"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "actionList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getAction(I)Lorg/cybergarage/upnp/Action;
    .locals 1
    .parameter "n"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Action;

    return-object v0
.end method
