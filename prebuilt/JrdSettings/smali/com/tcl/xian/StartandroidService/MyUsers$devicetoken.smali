.class public final Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;
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
    name = "devicetoken"
.end annotation


# static fields
.field public static final ACTIVE_FLAG:Ljava/lang/String; = "activeflag"

.field public static final ACTIVE_KEY:Ljava/lang/String; = "activekey"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEVICE_ID:Ljava/lang/String; = "deviceid"

.field public static final DEVICE_MODEL:Ljava/lang/String; = "devicemodel"

.field public static final DIDTOKEN:Ljava/lang/String; = "didtoken"

.field public static final DUM:Ljava/lang/String; = "dum"

.field public static final HUAN_ID:Ljava/lang/String; = "huanid"

.field public static final LICENSE_DATA:Ljava/lang/String; = "license_data"

.field public static final LICENSE_TYPE:Ljava/lang/String; = "license_type"

.field public static final TOKEN:Ljava/lang/String; = "token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.tcl.xian.StartandroidService.MyContentProvider/devicetoken"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
