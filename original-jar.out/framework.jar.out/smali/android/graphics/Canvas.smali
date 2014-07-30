.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$BlurMesh;,
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "Canvas"

.field public static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final MAXMIMUM_BITMAP_SIZE:I = 0x7ffe


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private final mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

.field final mNativeCanvas:I

.field protected mScreenDensity:I

.field private mSurfaceFormat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 64
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 117
    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 118
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-direct {v0, v1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 119
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "nativeCanvas"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 64
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 146
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 147
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 64
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 136
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-direct {v0, v1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 137
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 138
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 139
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/graphics/Canvas;->finalizer(I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/graphics/Canvas;->nBlurMesh_new()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setHint_hasAnythingToBlurInLayer(IZ)V

    return-void
.end method

.method static synthetic access$1100(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setHint_hasAnythingElseToBlurInSurface(IZ)V

    return-void
.end method

.method static synthetic access$1200(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setHint_hasAnythingToBlurInOtherSurfaces(IZ)V

    return-void
.end method

.method static synthetic access$1300(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setHint_needsPerfectInputSynchronization(IZ)V

    return-void
.end method

.method static synthetic access$1400(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setInvertArea(IZ)V

    return-void
.end method

.method static synthetic access$1500(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setInvertLayer(IZ)V

    return-void
.end method

.method static synthetic access$1600(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setFullScreen(IZ)V

    return-void
.end method

.method static synthetic access$1700(IF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setSaturationCoef(IF)V

    return-void
.end method

.method static synthetic access$1800(IFZIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-static/range {p0 .. p5}, Landroid/graphics/Canvas;->nBlurMesh_setAutoColorCorrection(IFZIIZ)V

    return-void
.end method

.method static synthetic access$200(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/graphics/Canvas;->nBlurMesh_delete(I)V

    return-void
.end method

.method static synthetic access$300(IF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setBlurAmount(IF)V

    return-void
.end method

.method static synthetic access$400(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/graphics/Canvas;->nBlurMesh_setSize(III)V

    return-void
.end method

.method static synthetic access$500(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/graphics/Canvas;->nBlurMesh_setMask(II)V

    return-void
.end method

.method static synthetic access$600(III[B[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->nBlurMesh_setMask(III[B[B)V

    return-void
.end method

.method static synthetic access$700(IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/graphics/Canvas;->nBlurMesh_setOverlayColor(IZI)V

    return-void
.end method

.method static synthetic access$800(IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/graphics/Canvas;->nBlurMesh_setDimColor(IZI)V

    return-void
.end method

.method static synthetic access$900(IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/graphics/Canvas;->nBlurMesh_setHint_hasRefContentId(IZI)V

    return-void
.end method

.method protected static checkRange(III)V
    .locals 1
    .parameter "length"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 1208
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p0, :cond_1

    .line 1209
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1211
    :cond_1
    return-void
.end method

.method public static createBlurMesh()Landroid/graphics/Canvas$BlurMesh;
    .locals 1

    .prologue
    .line 1950
    new-instance v0, Landroid/graphics/Canvas$BlurMesh;

    invoke-direct {v0}, Landroid/graphics/Canvas$BlurMesh;-><init>()V

    return-object v0
.end method

.method private static native finalizer(I)V
.end method

.method public static native freeCaches()V
.end method

.method public static native freeTextLayoutCaches()V
.end method

.method private static native initRaster(I)I
.end method

.method private static native nBlurMesh_delete(I)V
.end method

.method private static native nBlurMesh_new()I
.end method

.method private static native nBlurMesh_setAutoColorCorrection(IFZIIZ)V
.end method

.method private static native nBlurMesh_setBlurAmount(IF)V
.end method

.method private static native nBlurMesh_setDimColor(IZI)V
.end method

.method private static native nBlurMesh_setFullScreen(IZ)V
.end method

.method private static native nBlurMesh_setHint_hasAnythingElseToBlurInSurface(IZ)V
.end method

.method private static native nBlurMesh_setHint_hasAnythingToBlurInLayer(IZ)V
.end method

.method private static native nBlurMesh_setHint_hasAnythingToBlurInOtherSurfaces(IZ)V
.end method

.method private static native nBlurMesh_setHint_hasRefContentId(IZI)V
.end method

.method private static native nBlurMesh_setHint_needsPerfectInputSynchronization(IZ)V
.end method

.method private static native nBlurMesh_setInvertArea(IZ)V
.end method

.method private static native nBlurMesh_setInvertLayer(IZ)V
.end method

.method private static native nBlurMesh_setMask(II)V
.end method

.method private static native nBlurMesh_setMask(III[B[B)V
.end method

.method private static native nBlurMesh_setOverlayColor(IZI)V
.end method

.method private static native nBlurMesh_setSaturationCoef(IF)V
.end method

.method private static native nBlurMesh_setSize(III)V
.end method

.method private static native nativeDrawBitmapMatrix(IIII)V
.end method

.method private static native nativeDrawBitmapMesh(IIII[FI[III)V
.end method

.method private static native nativeDrawVertices(III[FI[FI[II[SIII)V
.end method

.method private static native nativeSetDrawFilter(II)V
.end method

.method private static native native_blur(IIII)V
.end method

.method private static native native_clipPath(III)Z
.end method

.method private static native native_clipRect(IFFFFI)Z
.end method

.method private static native native_clipRegion(III)Z
.end method

.method private static native native_concat(II)V
.end method

.method private static native native_drawARGB(IIIII)V
.end method

.method private static native native_drawArc(ILandroid/graphics/RectF;FFZI)V
.end method

.method private native native_drawBitmap(IIFFIIII)V
.end method

.method private static native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V
.end method

.method private native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V
.end method

.method private static native native_drawBitmap(I[IIIFFIIZI)V
.end method

.method private static native native_drawCircle(IFFFI)V
.end method

.method private static native native_drawColor(II)V
.end method

.method private static native native_drawColor(III)V
.end method

.method private static native native_drawLine(IFFFFI)V
.end method

.method private static native native_drawOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawPaint(II)V
.end method

.method private static native native_drawPath(III)V
.end method

.method private static native native_drawPicture(II)V
.end method

.method private static native native_drawPosText(ILjava/lang/String;[FI)V
.end method

.method private static native native_drawPosText(I[CII[FI)V
.end method

.method private static native native_drawRGB(IIII)V
.end method

.method private static native native_drawRect(IFFFFI)V
.end method

.method private static native native_drawRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_drawText(ILjava/lang/String;IIFFII)V
.end method

.method private static native native_drawText(I[CIIFFII)V
.end method

.method private static native native_drawTextOnPath(ILjava/lang/String;IFFII)V
.end method

.method private static native native_drawTextOnPath(I[CIIIFFII)V
.end method

.method private static native native_drawTextRun(ILjava/lang/String;IIIIFFII)V
.end method

.method private static native native_drawTextRun(I[CIIIIFFII)V
.end method

.method private static native native_getCTM(II)V
.end method

.method private static native native_getClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native native_quickReject(IFFFFI)Z
.end method

.method private static native native_quickReject(III)Z
.end method

.method private static native native_quickReject(ILandroid/graphics/RectF;I)Z
.end method

.method private static native native_saveLayer(IFFFFII)I
.end method

.method private static native native_saveLayer(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_saveLayerAlpha(IFFFFII)I
.end method

.method private static native native_saveLayerAlpha(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_setBitmap(II)V
.end method

.method private static native native_setMatrix(II)V
.end method

.method private static throwIfRecycled(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 1030
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_0
    return-void
.end method


# virtual methods
.method public blur(III)V
    .locals 2
    .parameter "nativeBlurMesh"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1961
    const-string v0, "Canvas"

    const-string v1, "Canvas.blur()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_blur(IIII)V

    .line 1963
    return-void
.end method

.method public blur(Landroid/graphics/Rect;FIII)V
    .locals 4
    .parameter "where"
    .parameter "blurAmount"
    .parameter "overlayColor"
    .parameter "dimColor"
    .parameter "maskDrawableResId"

    .prologue
    const/high16 v3, -0x100

    const/4 v2, 0x1

    .line 1987
    invoke-static {}, Landroid/graphics/Canvas;->createBlurMesh()Landroid/graphics/Canvas$BlurMesh;

    move-result-object v0

    .line 1988
    .local v0, blurMesh:Landroid/graphics/Canvas$BlurMesh;
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas$BlurMesh;->setBlurAmount(F)V

    .line 1989
    and-int v1, p3, v3

    if-eqz v1, :cond_0

    .line 1990
    invoke-virtual {v0, v2, p3}, Landroid/graphics/Canvas$BlurMesh;->setOverlayColor(ZI)V

    .line 1992
    :cond_0
    and-int v1, p4, v3

    if-eqz v1, :cond_1

    .line 1993
    invoke-virtual {v0, v2, p4}, Landroid/graphics/Canvas$BlurMesh;->setDimColor(ZI)V

    .line 1995
    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas$BlurMesh;->setHint_hasAnythingToBlurInLayer(Z)V

    .line 1996
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas$BlurMesh;->setHint_hasAnythingToBlurInOtherSurfaces(Z)V

    .line 1997
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas$BlurMesh;->setSize(II)V

    .line 1998
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Canvas$BlurMesh;->draw(Landroid/graphics/Canvas;II)V

    .line 1999
    invoke-virtual {v0}, Landroid/graphics/Canvas$BlurMesh;->destroy()V

    const/4 v0, 0x0

    .line 2000
    return-void
.end method

.method public blur(Landroid/graphics/Rect;FIILandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "where"
    .parameter "blurAmount"
    .parameter "overlayColor"
    .parameter "dimColor"
    .parameter "maskBitmap"

    .prologue
    .line 2005
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->blur(Landroid/graphics/Rect;FIII)V

    .line 2006
    return-void
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 643
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "path"
    .parameter "op"

    .prologue
    .line 633
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipPath(III)Z

    move-result v0

    return v0
.end method

.method public native clipRect(FFFF)Z
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    .line 592
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(IIII)Z
.end method

.method public native clipRect(Landroid/graphics/Rect;)Z
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 554
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(Landroid/graphics/RectF;)Z
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 541
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 672
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "region"
    .parameter "op"

    .prologue
    .line 658
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipRegion(III)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 491
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_concat(II)V

    .line 492
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 806
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawARGB(IIIII)V

    .line 807
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 994
    if-nez p1, :cond_0

    .line 995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 997
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawArc(ILandroid/graphics/RectF;FFZI)V

    .line 999
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 9
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    .line 1070
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1071
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_0

    iget v5, p4, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v6, p0, Landroid/graphics/Canvas;->mDensity:I

    iget v7, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v8, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Canvas;->native_drawBitmap(IIFFIIII)V

    .line 1073
    return-void

    .line 1071
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 4
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    .line 1200
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()I

    move-result v3

    if-eqz p3, :cond_0

    iget v0, p3, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(IIII)V

    .line 1202
    return-void

    .line 1200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1129
    if-nez p3, :cond_0

    .line 1130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1132
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1133
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    if-eqz p4, :cond_1

    iget v4, p4, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v5, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 1135
    return-void

    .line 1133
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1098
    if-nez p3, :cond_0

    .line 1099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1101
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1102
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_1

    iget v5, p4, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v6, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v7, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V

    .line 1104
    return-void

    .line 1102
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 13
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 1159
    if-gez p6, :cond_0

    .line 1160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1162
    :cond_0
    if-gez p7, :cond_1

    .line 1163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1165
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move/from16 v0, p6

    if-ge v1, v0, :cond_2

    .line 1166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1168
    :cond_2
    add-int/lit8 v1, p7, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    .line 1169
    .local v11, lastScanline:I
    array-length v12, p1

    .line 1170
    .local v12, length:I
    if-ltz p2, :cond_3

    add-int v1, p2, p6

    if-gt v1, v12, :cond_3

    if-ltz v11, :cond_3

    add-int v1, v11, p6

    if-le v1, v12, :cond_4

    .line 1172
    :cond_3
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1175
    :cond_4
    if-eqz p6, :cond_5

    if-nez p7, :cond_6

    .line 1181
    :cond_5
    :goto_0
    return-void

    .line 1179
    :cond_6
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p9, :cond_7

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    :goto_1
    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Canvas;->native_drawBitmap(I[IIIFFIIZI)V

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 1188
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 1190
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 11
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 1241
    or-int v1, p2, p3

    or-int v1, v1, p5

    or-int v1, v1, p7

    if-gez v1, :cond_0

    .line 1242
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1244
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1257
    :cond_1
    :goto_0
    return-void

    .line 1247
    :cond_2
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v10, v1, v2

    .line 1249
    .local v10, count:I
    array-length v1, p4

    mul-int/lit8 v2, v10, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1250
    if-eqz p6, :cond_3

    .line 1252
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, p7

    invoke-static {v1, v0, v10}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1254
    :cond_3
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Paint;->mNativePaint:I

    :goto_1
    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(IIII[FI[III)V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 2
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 966
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawCircle(IFFFI)V

    .line 967
    return-void
.end method

.method public drawColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 816
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_drawColor(II)V

    .line 817
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 827
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawColor(III)V

    .line 828
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    .line 881
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawLine(IFFFFI)V

    .line 882
    return-void
.end method

.method public native drawLines([FIILandroid/graphics/Paint;)V
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 902
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 903
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 952
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawOval(ILandroid/graphics/RectF;I)V

    .line 953
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "paint"

    .prologue
    .line 838
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPaint(II)V

    .line 839
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "bitmap"
    .parameter "chunks"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1048
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 3
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 1026
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_drawPath(III)V

    .line 1027
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    .line 1587
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 1588
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Picture;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPicture(II)V

    .line 1589
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 1608
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1609
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1610
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1611
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1614
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1615
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1616
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1596
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1597
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1598
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1600
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1601
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1602
    return-void
.end method

.method public native drawPoint(FFLandroid/graphics/Paint;)V
.end method

.method public native drawPoints([FIILandroid/graphics/Paint;)V
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 863
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 864
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "text"
    .parameter "pos"
    .parameter "paint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1530
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1533
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Canvas;->native_drawPosText(ILjava/lang/String;[FI)V

    .line 1534
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1510
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 1511
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1513
    :cond_1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPosText(I[CII[FI)V

    .line 1515
    return-void
.end method

.method public drawRGB(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 793
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_drawRGB(IIII)V

    .line 794
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 939
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRect(IFFFFI)V

    .line 940
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 924
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 925
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "rect"
    .parameter "paint"

    .prologue
    .line 913
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawRect(ILandroid/graphics/RectF;I)V

    .line 914
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 2
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 1011
    if-nez p1, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1014
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawRoundRect(ILandroid/graphics/RectF;FFI)V

    .line 1016
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 1387
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 1389
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    .line 1401
    :goto_0
    return-void

    .line 1391
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1392
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1395
    :cond_2
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1396
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1397
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    sub-int v3, p3, p2

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFII)V

    .line 1399
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1350
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p4, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    .line 1352
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1366
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1367
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1369
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    .line 1371
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1332
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1334
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1336
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFII)V

    .line 1338
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1574
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    iget v5, p5, Landroid/graphics/Paint;->mBidiFlags:I

    iget v6, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawTextOnPath(ILjava/lang/String;IFFII)V

    .line 1577
    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 10
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1551
    if-ltz p2, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 1552
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1554
    :cond_1
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p4}, Landroid/graphics/Path;->ni()I

    move-result v5

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v9}, Landroid/graphics/Canvas;->native_drawTextOnPath(I[CIIIFFII)V

    .line 1557
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .locals 11
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 1464
    if-nez p1, :cond_0

    .line 1465
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "text is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1467
    :cond_0
    if-nez p9, :cond_1

    .line 1468
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "paint is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1470
    :cond_1
    or-int v1, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v1, v3

    if-gez v1, :cond_2

    .line 1471
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1474
    :cond_2
    if-nez p8, :cond_4

    const/4 v9, 0x0

    .line 1476
    .local v9, flags:I
    :goto_0
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_3

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_5

    .line 1478
    :cond_3
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Landroid/graphics/Canvas;->native_drawTextRun(ILjava/lang/String;IIIIFFII)V

    .line 1492
    :goto_1
    return-void

    .line 1474
    .end local v9           #flags:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    .line 1480
    .restart local v9       #flags:I
    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 1481
    check-cast v1, Landroid/text/GraphicsOperations;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1484
    :cond_6
    sub-int v6, p5, p4

    .line 1485
    .local v6, contextLen:I
    sub-int v4, p3, p2

    .line 1486
    .local v4, len:I
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 1487
    .local v2, buf:[C
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1488
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    sub-int v3, p2, p4

    const/4 v5, 0x0

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Landroid/graphics/Canvas;->native_drawTextRun(I[CIIIIFFII)V

    .line 1490
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .locals 11
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 1427
    if-nez p1, :cond_0

    .line 1428
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_0
    if-nez p9, :cond_1

    .line 1431
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1433
    :cond_1
    or-int v1, p2, p3

    array-length v2, p1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    .line 1434
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1436
    :cond_2
    if-eqz p8, :cond_3

    const/4 v1, 0x1

    move/from16 v0, p8

    if-eq v0, v1, :cond_3

    .line 1437
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1440
    :cond_3
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Canvas;->native_drawTextRun(I[CIIIIFFII)V

    .line 1442
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 15
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 1307
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1308
    if-eqz p5, :cond_0

    .line 1309
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1311
    :cond_0
    if-eqz p7, :cond_1

    .line 1312
    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v3, p2, 0x2

    move/from16 v0, p8

    invoke-static {v2, v0, v3}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1314
    :cond_1
    if-eqz p9, :cond_2

    .line 1315
    move-object/from16 v0, p9

    array-length v2, v0

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1317
    :cond_2
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    move-object/from16 v0, p12

    iget v14, v0, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v14}, Landroid/graphics/Canvas;->nativeDrawVertices(III[FI[FI[II[SIII)V

    .line 1320
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 779
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 780
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 781
    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "bounds"

    .prologue
    .line 770
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_getClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method protected getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public native getHeight()I
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 529
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 530
    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "ctm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getCTM(II)V

    .line 519
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0x7ffe

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    .line 284
    const/16 v0, 0x7ffe

    return v0
.end method

.method public native getSaveCount()I
.end method

.method public native getWidth()I
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public native isOpaque()Z
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "type"

    .prologue
    .line 758
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 3
    .parameter "path"
    .parameter "type"

    .prologue
    .line 734
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_quickReject(III)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 2
    .parameter "rect"
    .parameter "type"

    .prologue
    .line 714
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_quickReject(ILandroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public native restore()V
.end method

.method public native restoreToCount(I)V
.end method

.method public native rotate(F)V
.end method

.method public final rotate(FFF)V
    .locals 2
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 472
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 473
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 474
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    return-void
.end method

.method public native save()I
.end method

.method public native save(I)I
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 364
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p5, :cond_0

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayer(IFFFFII)I

    move-result v0

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 2
    .parameter "bounds"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 354
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    invoke-static {v1, p1, v0, p3}, Landroid/graphics/Canvas;->native_saveLayer(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 395
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayerAlpha(IFFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 2
    .parameter "bounds"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 386
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 387
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_saveLayerAlpha(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public native scale(FF)V
.end method

.method public final scale(FFFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 452
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 454
    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 455
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t set a bitmap device on a GL canvas"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 190
    .local v0, pointer:I
    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 194
    :cond_1
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 195
    iget v1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    .line 199
    :cond_2
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v1, v0}, Landroid/graphics/Canvas;->native_setBitmap(II)V

    .line 200
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 201
    return-void
.end method

.method public setDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 265
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 268
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 269
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, nativeFilter:I
    if-eqz p1, :cond_0

    .line 682
    iget v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:I

    .line 684
    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 685
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v1, v0}, Landroid/graphics/Canvas;->nativeSetDrawFilter(II)V

    .line 686
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 508
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/graphics/Canvas;->native_setMatrix(II)V

    .line 510
    return-void

    .line 508
    :cond_0
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 273
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 274
    return-void
.end method

.method public setViewport(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 213
    return-void
.end method

.method public native skew(FF)V
.end method

.method public native translate(FF)V
.end method
