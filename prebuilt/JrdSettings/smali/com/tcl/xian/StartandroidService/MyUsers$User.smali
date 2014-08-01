.class public final Lcom/tcl/xian/StartandroidService/MyUsers$User;
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
    name = "User"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final USER_NAME:Ljava/lang/String; = "USER_NAME"

.field public static final USER_SEX:Ljava/lang/String; = "USER_SEX"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://com.tcl.xian.StartandroidService.MyContentProvider/User"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tcl/xian/StartandroidService/MyUsers$User;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
