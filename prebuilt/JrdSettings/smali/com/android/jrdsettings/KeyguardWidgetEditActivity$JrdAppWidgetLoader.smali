.class Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;
.super Landroid/os/AsyncTask;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JrdAppWidgetLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$BitmapCache;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;,
        Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field lockScreenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private mResources:Landroid/content/res/Resources;

.field sCachedAppWidgetPreviewCanvas:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;

.field sCachedAppWidgetPreviewDestRect:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

.field sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;

.field sCachedAppWidgetPreviewSrcRect:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p2, widgetsInLockscreen:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 876
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;

    .line 877
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

    .line 878
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

    .line 879
    new-instance v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;

    .line 727
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->lockScreenItems:Ljava/util/ArrayList;

    .line 728
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
    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 885
    .local v22, packageName:Ljava/lang/String;
    if-gez p4, :cond_0

    .line 886
    const p4, 0x7fffffff

    .line 887
    :cond_0
    if-gez p5, :cond_1

    .line 888
    const p5, 0x7fffffff

    .line 890
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080005

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 893
    .local v9, appIconSize:I
    const/4 v11, 0x0

    .line 894
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$900(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 897
    if-nez v11, :cond_2

    .line 898
    const-string v4, "KeyguardWidgetEditActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_2
    const/4 v6, 0x0

    .line 907
    .local v6, defaultPreview:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_5

    const/16 v25, 0x1

    .line 908
    .local v25, widgetPreviewExists:Z
    :goto_0
    if-eqz v25, :cond_6

    .line 909
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 910
    .local v18, bitmapWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 933
    .local v17, bitmapHeight:I
    :cond_3
    :goto_1
    const/high16 v23, 0x3f80

    .line 934
    .local v23, scale:F
    move/from16 v0, v18

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    .line 935
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v7, v0

    div-float v23, v4, v7

    .line 937
    :cond_4
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v15, v4

    .line 938
    .local v15, finalPreviewWidth:I
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v0, v4

    move/from16 v16, v0

    .line 940
    .local v16, finalPreviewHeight:I
    move/from16 v18, v15

    .line 941
    move/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 943
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 947
    .local v12, preview:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_8

    .line 948
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 968
    :goto_2
    return-object v12

    .line 907
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

    .line 913
    .restart local v25       #widgetPreviewExists:Z
    :cond_6
    move/from16 v18, v9

    .line 914
    .restart local v18       #bitmapWidth:I
    move/from16 v17, v9

    .line 915
    .restart local v17       #bitmapHeight:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 919
    const/4 v5, 0x0

    .line 920
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_7

    .line 921
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 922
    :cond_7
    if-eqz v5, :cond_3

    .line 923
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move v10, v9

    invoke-direct/range {v4 .. v10}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 926
    :catch_0
    move-exception v4

    goto :goto_1

    .line 951
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v12       #preview:Landroid/graphics/Bitmap;
    .restart local v15       #finalPreviewWidth:I
    .restart local v16       #finalPreviewHeight:I
    .restart local v23       #scale:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Canvas;

    .line 952
    .local v19, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 953
    .local v24, src:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 954
    .local v20, dest:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 955
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 957
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v4, v7, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Paint;

    .line 960
    .local v21, p:Landroid/graphics/Paint;
    if-nez v21, :cond_9

    .line 961
    new-instance v21, Landroid/graphics/Paint;

    .end local v21           #p:Landroid/graphics/Paint;
    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 962
    .restart local v21       #p:Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->set(Ljava/lang/Object;)V

    .line 965
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 966
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
    .line 1005
    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 1006
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
    .line 1010
    if-eqz p2, :cond_0

    .line 1011
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1012
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1013
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1014
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1015
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1016
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1017
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1019
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x1

    .line 747
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v0, v12}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 749
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v10, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$700(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v8

    .line 752
    .local v8, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p0, v8, v10}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;)V

    .line 754
    const/4 v6, 0x0

    .line 755
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 756
    .local v11, newBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->bottomContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$600(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->mResources:Landroid/content/res/Resources;

    .line 757
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 759
    .local v4, appWidgetPreviewWidth:I
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 761
    .local v5, appWidgetPreviewHeight:I
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    iget-object v0, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->mIconDpi:I

    .line 763
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 765
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    .line 766
    .local v9, item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v9, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->className:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    iget v2, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->appWidgetPreviewId:I

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    iget v3, v0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->iconId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    .line 769
    new-array v0, v12, [Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 763
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 772
    .end local v9           #item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 972
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 979
    :try_start_0
    iget v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 984
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 980
    :catch_0
    move-exception v1

    .line 981
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 984
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 990
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$900(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 995
    .local v1, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 996
    if-eqz p2, :cond_0

    .line 997
    invoke-virtual {p0, v1, p2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1000
    :goto_1
    return-object v2

    .line 992
    .end local v1           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 993
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 1000
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initUpGridView()V

    .line 812
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initBottmGridView()V

    .line 813
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 805
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initUpGridView()V

    .line 806
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initBottmGridView()V

    .line 807
    return-void
.end method

.method public varargs onProgressUpdate([Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 782
    move-object v0, p1

    .local v0, arr$:[Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 783
    .local v2, item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #calls: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->isFMRadioItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)Z
    invoke-static {v4, v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$800(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 784
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->lockScreenItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 785
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v4, v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->addItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    .line 782
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mBottomPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;
    invoke-static {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$200(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->addItem(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    goto :goto_1

    .line 791
    .end local v2           #item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    :cond_2
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 793
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->initBottmGridView()V

    .line 795
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 721
    check-cast p1, [Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->onProgressUpdate([Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    return-void
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    if-nez p1, :cond_1

    .line 743
    :cond_0
    return-void

    .line 737
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 738
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 739
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 740
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->bottomContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$600(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v2

    .line 741
    .local v2, item:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
