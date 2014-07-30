.class public Lcom/mediatek/drm/OmaDrmClient;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmClient$getCidListener;
    }
.end annotation


# static fields
.field public static final CROPIMAGE_FILEPATH:Ljava/lang/String; = "drm_cropimage_filepath"

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "OmaDrmClient"

.field public static final WALLPAPER_FILEPATH:Ljava/lang/String; = "drm_wallpaper_filepath"

.field public static sConsumeDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sLicenseDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sProtectionInfoDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sSecureTimerDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "OmaDrmClient"

    const-string v1, "create OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 97
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    const-string v0, "OmaDrmClient"

    const-string v1, "new OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 1
    .parameter "drmInfoRequest"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 1
    .parameter "drmInfoRequest"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v0

    return v0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 3
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    .line 407
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 408
    const-string v1, "OmaDrmClient"

    const-string v2, "checkRightsStatus : secure timer indicates invalid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x1

    .line 411
    :cond_0
    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 3
    .parameter "path"
    .parameter "action"

    .prologue
    .line 388
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 389
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 390
    const-string v1, "OmaDrmClient"

    const-string v2, "checkRightsStatus : secure timer indicates invalid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    .line 393
    :cond_0
    return v0
.end method

.method public checkRightsStatusForTap(Landroid/net/Uri;I)I
    .locals 4
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 639
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    .line 641
    .local v0, result:I
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v0
.end method

.method public checkRightsStatusForTap(Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    .line 657
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 659
    .local v0, result:I
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return v0
.end method

.method public consumeRights(Landroid/net/Uri;I)I
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    const/16 v2, -0x7d0

    .line 520
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 523
    :cond_0
    const-string v3, "OmaDrmClient"

    const-string v4, "consumeRights : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_0
    return v2

    .line 526
    :cond_1
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 527
    const-string v3, "OmaDrmClient"

    const-string v4, "consumeRights : Given action is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_2
    const/4 v1, 0x0

    .line 533
    .local v1, path:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @consumeRights : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public consumeRights(Ljava/lang/String;I)I
    .locals 9
    .parameter "path"
    .parameter "action"

    .prologue
    const/16 v5, -0x7d0

    .line 549
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consumeRights : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 552
    :cond_0
    const-string v6, "OmaDrmClient"

    const-string v7, "consumeRights : Given path is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    :goto_0
    return v5

    .line 555
    :cond_2
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 556
    const-string v6, "OmaDrmClient"

    const-string v7, "consumeRights : Given action is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :cond_3
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x7e5

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v4, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 564
    .local v4, request:Landroid/drm/DrmInfoRequest;
    const-string v6, "action"

    const-string v7, "consumeRights"

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    const-string v6, "data"

    invoke-virtual {v4, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    const-string v6, "data_extra_1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 572
    .local v2, info:Landroid/drm/DrmInfo;
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 573
    .local v0, data:[B
    const-string v3, ""

    .line 574
    .local v3, message:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 577
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3           #message:Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .restart local v3       #message:Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consumeRights : >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v6, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 578
    .end local v3           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 579
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "OmaDrmClient"

    const-string v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v3, ""

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method public drmSetAsWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 732
    const-string v3, "OmaDrmClient"

    const-string v4, "enter drmSetWallpaper "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0, p2, v5}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    const v3, 0x305000d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, toastMsg:Ljava/lang/String;
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 750
    .end local v0           #toastMsg:Ljava/lang/String;
    :goto_0
    return v1

    .line 738
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    const v3, 0x305000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .restart local v0       #toastMsg:Ljava/lang/String;
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 743
    .end local v0           #toastMsg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "drm_cropimage_filepath"

    invoke-static {v1, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    const-string v1, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmSetAsWallpaper  successful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_1
    invoke-virtual {p0, p2, v5}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Ljava/lang/String;I)I

    move v1, v2

    .line 750
    goto :goto_0

    .line 746
    :cond_2
    const-string v1, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmSetAsWallpaper faile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "OmaDrmClient"

    const-string v1, "finalize OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->getAvailableDrmEngines()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 1
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .parameter "path"
    .parameter "action"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrmClient()Landroid/drm/DrmManagerClient;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 1
    .parameter "uri"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "path"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    .line 596
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    .line 599
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 601
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 602
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 605
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 615
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 618
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 620
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 624
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCountConstraint(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 761
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCountConstraint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v0

    .line 763
    .local v0, result:Z
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCountConstraint result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return v0
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 1
    .parameter "engineFilePath"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->installDrmEngine(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public installDrmMsg(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    const/16 v2, -0x7d0

    .line 453
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installDrmMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 456
    :cond_0
    const-string v3, "OmaDrmClient"

    const-string v4, "installDrmMsg : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return v2

    .line 460
    :cond_1
    const/4 v1, 0x0

    .line 462
    .local v1, path:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 467
    invoke-virtual {p0, v1}, Lcom/mediatek/drm/OmaDrmClient;->installDrmMsg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @installDrmMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installDrmMsg(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    const/16 v5, -0x7d0

    .line 477
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installDrmMsg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    :cond_0
    const-string v6, "OmaDrmClient"

    const-string v7, "installDrmMsg : Given path is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    :goto_0
    return v5

    .line 485
    :cond_2
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x7e5

    const-string v7, "application/vnd.oma.drm.message"

    invoke-direct {v4, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 488
    .local v4, request:Landroid/drm/DrmInfoRequest;
    const-string v6, "action"

    const-string v7, "installDrmMsg"

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    const-string v6, "data"

    invoke-virtual {v4, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 495
    .local v2, info:Landroid/drm/DrmInfo;
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 496
    .local v0, data:[B
    const-string v3, ""

    .line 497
    .local v3, message:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 500
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3           #message:Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .restart local v3       #message:Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installDrmMsg : >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v6, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 501
    .end local v3           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "OmaDrmClient"

    const-string v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v3, ""

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method public isDrm(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 775
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/drm/DrmManagerClient;->isDrm(Ljava/lang/String;)Z

    move-result v0

    .line 776
    .local v0, result:Z
    return v0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 1
    .parameter "drmInfo"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "OmaDrmClient"

    const-string v1, "release OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 118
    :cond_0
    return-void
.end method

.method public removeAllRights()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    return v0
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rescanDrmMediaFiles(Landroid/content/Context;Landroid/drm/DrmRights;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 5
    .parameter "context"
    .parameter "rights"
    .parameter "callback"

    .prologue
    .line 676
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v3, Lcom/mediatek/drm/OmaDrmClient$getCidListener;

    invoke-direct {v3, p0, p1, p3}, Lcom/mediatek/drm/OmaDrmClient$getCidListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)V

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 679
    new-instance v0, Landroid/drm/DrmInfo;

    const/16 v2, 0x7e6

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 682
    .local v0, info:Landroid/drm/DrmInfo;
    const-string v2, "action"

    const-string v3, "getContentId"

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 686
    .local v1, result:I
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmaDrmClient#rescanDrmMediaFiles: > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v1
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "drmRights"
    .parameter "rightsPath"
    .parameter "contentPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
