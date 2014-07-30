.class public Landroid/drm/DrmStore$MimeType;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeType"
.end annotation


# static fields
.field public static final DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final DRM_MIMETYPE_DCF_STRING:Ljava/lang/String; = "application/vnd.oma.drm.dcf"

.field public static final DRM_MIMETYPE_DD_STRING:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final DRM_MIMETYPE_RIGHTS_WBXML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final DRM_MIMETYPE_RIGHTS_XML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
