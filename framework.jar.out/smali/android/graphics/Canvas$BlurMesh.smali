.class public Landroid/graphics/Canvas$BlurMesh;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurMesh"
.end annotation


# instance fields
.field mNativeBlurMesh:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1801
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    .line 1804
    #calls: Landroid/graphics/Canvas;->nBlurMesh_new()I
    invoke-static {}, Landroid/graphics/Canvas;->access$100()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    .line 1805
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1808
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_delete(I)V
    invoke-static {v0}, Landroid/graphics/Canvas;->access$200(I)V

    .line 1809
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    .line 1810
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1943
    const-string v0, "Canvas"

    const-string v1, "Canvas.BlurMesh.draw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->blur(III)V

    .line 1945
    return-void
.end method

.method public setAutoColorCorrection(FZIIZ)V
    .locals 6
    .parameter "autoCorrectionCoef"
    .parameter "autoContrast"
    .parameter "whiteMargin"
    .parameter "blackMargin"
    .parameter "autoSaturation"

    .prologue
    .line 1932
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setAutoColorCorrection(IFZIIZ)V
    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->access$1800(IFZIIZ)V

    .line 1936
    return-void
.end method

.method public setBlurAmount(F)V
    .locals 1
    .parameter "blurAmount"

    .prologue
    .line 1813
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setBlurAmount(IF)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$300(IF)V

    .line 1814
    return-void
.end method

.method public setDimColor(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "color"

    .prologue
    .line 1835
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setDimColor(IZI)V
    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->access$800(IZI)V

    .line 1836
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1902
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setFullScreen(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1600(IZ)V

    .line 1903
    return-void
.end method

.method public setHint_hasAnythingElseToBlurInSurface(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1847
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setHint_hasAnythingElseToBlurInSurface(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1100(IZ)V

    .line 1848
    return-void
.end method

.method public setHint_hasAnythingToBlurInLayer(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1843
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setHint_hasAnythingToBlurInLayer(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1000(IZ)V

    .line 1844
    return-void
.end method

.method public setHint_hasAnythingToBlurInOtherSurfaces(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1855
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setHint_hasAnythingToBlurInOtherSurfaces(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1200(IZ)V

    .line 1856
    return-void
.end method

.method public setHint_hasRefContentId(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "refContentId"

    .prologue
    .line 1839
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setHint_hasRefContentId(IZI)V
    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->access$900(IZI)V

    .line 1840
    return-void
.end method

.method public setHint_needsPerfectInputSynchronization(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1866
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setHint_needsPerfectInputSynchronization(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1300(IZ)V

    .line 1867
    return-void
.end method

.method public setInvertArea(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1875
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setInvertArea(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1400(IZ)V

    .line 1876
    return-void
.end method

.method public setInvertLayer(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1891
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setInvertLayer(IZ)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1500(IZ)V

    .line 1892
    return-void
.end method

.method public setMask(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1821
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setMask(II)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$500(II)V

    .line 1822
    return-void
.end method

.method public setMask(ILandroid/graphics/Bitmap;[B)V
    .locals 3
    .parameter "uid"
    .parameter "bitmap"
    .parameter "chunks"

    .prologue
    .line 1825
    if-eqz p2, :cond_0

    .line 1826
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    iget v1, p2, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p2, Landroid/graphics/Bitmap;->mBuffer:[B

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setMask(III[B[B)V
    invoke-static {v0, p1, v1, v2, p3}, Landroid/graphics/Canvas;->access$600(III[B[B)V

    .line 1828
    :cond_0
    return-void
.end method

.method public setOverlayColor(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "color"

    .prologue
    .line 1831
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setOverlayColor(IZI)V
    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->access$700(IZI)V

    .line 1832
    return-void
.end method

.method public setSaturationCoef(F)V
    .locals 1
    .parameter "coef"

    .prologue
    .line 1914
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setSaturationCoef(IF)V
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->access$1700(IF)V

    .line 1915
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1817
    iget v0, p0, Landroid/graphics/Canvas$BlurMesh;->mNativeBlurMesh:I

    #calls: Landroid/graphics/Canvas;->nBlurMesh_setSize(III)V
    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->access$400(III)V

    .line 1818
    return-void
.end method
