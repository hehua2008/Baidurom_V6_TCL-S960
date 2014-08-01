.class Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;
.super Landroid/os/AsyncTask;
.source "KeyguardWidgetOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetPreviewLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;,
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$BitmapCache;,
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;,
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;,
        Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconDpi:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mView:Landroid/widget/ImageView;

.field sCachedAppWidgetPreviewCanvas:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;

.field sCachedAppWidgetPreviewDestRect:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

.field sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;

.field sCachedAppWidgetPreviewSrcRect:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "v"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    .line 285
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 371
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;

    .line 372
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

    .line 373
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

    .line 374
    new-instance v1, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;

    .line 286
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    .line 287
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 288
    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 290
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mIconDpi:I

    .line 291
    iput-object p3, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    .line 292
    return-void
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "provider"
    .parameter "previewImage"
    .parameter "iconId"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 380
    .local v22, packageName:Ljava/lang/String;
    if-gez p4, :cond_0

    const p4, 0x7fffffff

    .line 381
    :cond_0
    if-gez p5, :cond_1

    const p5, 0x7fffffff

    .line 384
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080005

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 386
    .local v9, appIconSize:I
    const/4 v11, 0x0

    .line 387
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 393
    :cond_2
    const/4 v6, 0x0

    .line 394
    .local v6, defaultPreview:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_5

    const/16 v25, 0x1

    .line 395
    .local v25, widgetPreviewExists:Z
    :goto_0
    if-eqz v25, :cond_6

    .line 396
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 397
    .local v18, bitmapWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 419
    .local v17, bitmapHeight:I
    :cond_3
    :goto_1
    const/high16 v23, 0x3f80

    .line 420
    .local v23, scale:F
    move/from16 v0, v18

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    .line 421
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v7, v0

    div-float v23, v4, v7

    .line 423
    :cond_4
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v15, v4

    .line 424
    .local v15, finalPreviewWidth:I
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v0, v4

    move/from16 v16, v0

    .line 426
    .local v16, finalPreviewHeight:I
    move/from16 v18, v15

    .line 427
    move/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 429
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 433
    .local v12, preview:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_8

    .line 434
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 453
    :goto_2
    return-object v12

    .line 394
    .end local v12           #preview:Landroid/graphics/Bitmap;
    .end local v15           #finalPreviewWidth:I
    .end local v16           #finalPreviewHeight:I
    .end local v17           #bitmapHeight:I
    .end local v18           #bitmapWidth:I
    .end local v23           #scale:F
    .end local v25           #widgetPreviewExists:Z
    :cond_5
    const/16 v25, 0x0

    goto :goto_0

    .line 400
    .restart local v25       #widgetPreviewExists:Z
    :cond_6
    move/from16 v18, v9

    .line 401
    .restart local v18       #bitmapWidth:I
    move/from16 v17, v9

    .line 402
    .restart local v17       #bitmapHeight:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 406
    const/4 v5, 0x0

    .line 407
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_7

    .line 408
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 409
    :cond_7
    if-eqz v5, :cond_3

    .line 410
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move v10, v9

    invoke-direct/range {v4 .. v10}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 413
    :catch_0
    move-exception v4

    goto :goto_1

    .line 437
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v12       #preview:Landroid/graphics/Bitmap;
    .restart local v15       #finalPreviewWidth:I
    .restart local v16       #finalPreviewHeight:I
    .restart local v23       #scale:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Canvas;

    .line 438
    .local v19, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 439
    .local v24, src:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 440
    .local v20, dest:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 442
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v4, v7, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Paint;

    .line 445
    .local v21, p:Landroid/graphics/Paint;
    if-nez v21, :cond_9

    .line 446
    new-instance v21, Landroid/graphics/Paint;

    .end local v21           #p:Landroid/graphics/Paint;
    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 447
    .restart local v21       #p:Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->set(Ljava/lang/Object;)V

    .line 450
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 451
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 487
    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 488
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"

    .prologue
    .line 492
    if-eqz p2, :cond_0

    .line 493
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 494
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 495
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 496
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 297
    .local v4, appWidgetPreviewWidth:I
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 299
    .local v5, appWidgetPreviewHeight:I
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    iget-object v0, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    iget-object v2, v2, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->className:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    iget v2, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->appWidgetPreviewId:I

    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;

    iget v3, v0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item;->iconId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 302
    .local v6, b:Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 304
    .end local v4           #appWidgetPreviewWidth:I
    .end local v5           #appWidgetPreviewHeight:I
    .end local v6           #b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 463
    :try_start_0
    iget v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 468
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 478
    .local v1, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 479
    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p0, v1, p2}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 483
    :goto_1
    return-object v2

    .line 475
    .end local v1           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 483
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 309
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
