.class public Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;
.super Ljava/lang/Object;
.source "QcNvItemsJRD.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final NV_MMITEST_INFO_I:I = 0xc354

.field public static final NV_TRACABILITY_1_I:I = 0xc351

.field public static final NV_TRACABILITY_2_I:I = 0xc352

.field public static final NV_TRACABILITY_3_I:I = 0xc353

.field public static final NV_TRACABILITY_I:I = 0xc350

.field private static final enableVLog:Z = true


# instance fields
.field private final DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mNvIo:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "QC_NV_ITEMS_JRD"

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "QcNvItemsJRD"

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->DEBUG:Z

    .line 56
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->TAG:Ljava/lang/String;

    const-string v1, "QcNvItemsJRD instance created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method private LOGD(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 65
    return-void
.end method


# virtual methods
.method public doNvRead(I)[B
    .locals 2
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v1, 0x200

    new-array v0, v1, [B

    .line 103
    .local v0, nvItem:[B
    invoke-static {p1, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->doNvRead(I[B)I

    .line 105
    return-object v0
.end method

.method public doNvWrite(I[B)V
    .locals 1
    .parameter "itemId"
    .parameter "nvItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->LOGD(Ljava/lang/String;)V

    .line 85
    invoke-static {p1, p2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->doNvWrite(I[B)I

    .line 86
    return-void
.end method
