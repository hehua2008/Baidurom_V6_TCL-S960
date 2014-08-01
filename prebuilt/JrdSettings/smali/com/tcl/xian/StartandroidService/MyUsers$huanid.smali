.class public final Lcom/tcl/xian/StartandroidService/MyUsers$huanid;
.super Ljava/lang/Object;
.source "MyUsers.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcl/xian/StartandroidService/MyUsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "huanid"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final HUAN_ID:Ljava/lang/String; = "huanid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.tcl.xian.StartandroidService.MyContentProvider/huanid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tcl/xian/StartandroidService/MyUsers$huanid;->CONTENT_URI:Landroid/net/Uri;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
