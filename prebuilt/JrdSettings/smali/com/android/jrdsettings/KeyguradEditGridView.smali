.class public Lcom/android/jrdsettings/KeyguradEditGridView;
.super Landroid/widget/GridView;
.source "KeyguradEditGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;,
        Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;
    }
.end annotation


# static fields
.field public static dropX:I

.field public static dropY:I

.field public static upSwitched:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private dragImageView:Landroid/widget/ImageView;

.field private dragOffsetX:I

.field private dragOffsetY:I

.field private dragPointX:I

.field private dragPointY:I

.field private dragPosition:I

.field private halfUpItem:I

.field private index:I

.field private indexStore:I

.field private isPopToast:Z

.field private itemHeight:I

.field private itemView:Landroid/view/View;

.field private leftItemViews:[Landroid/view/View;

.field private leftNumber:I

.field mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDragging:Z

.field protected mLastMotionX:I

.field protected mLastMotionY:I

.field protected mTouchSlop:I

.field mUpWidget_height:I

.field mViewPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

.field private myContext:Landroid/content/Context;

.field private rightItemViews:[Landroid/view/View;

.field private rightNumber:I

.field private wholeUpItem:I

.field private windowManager:Landroid/view/WindowManager;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-string v0, "KeyguradEditGridView"

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->isPopToast:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    .line 82
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->myContext:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mTouchSlop:I

    .line 84
    const/high16 v0, 0x433e

    sget v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mUpWidget_height:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/KeyguradEditGridView;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private moving(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 241
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    .line 242
    iput-boolean v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->isPopToast:Z

    .line 331
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 247
    .local v0, aa:[I
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 248
    aget v4, v0, v8

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointX:I

    sub-int p1, v4, v5

    .line 249
    aget v4, v0, v6

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    sub-int p2, v4, v5

    .line 251
    sget-boolean v4, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    if-ne v4, v6, :cond_2

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mUpWidget_height:I

    if-le p2, v4, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguradEditGridView;->recoverWidget()V

    .line 257
    :cond_2
    sget-boolean v4, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    if-eq v4, v6, :cond_0

    .line 262
    const/4 v3, -0x1

    .line 263
    .local v3, result:I
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    add-int/2addr v5, p2

    invoke-virtual {v4, p1, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 265
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-eq v4, v5, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    .line 270
    .local v1, adapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;
    if-le v3, v7, :cond_5

    .line 271
    iput v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    .line 272
    sput-boolean v6, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    .line 273
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    .line 275
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    .line 276
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 277
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    .line 278
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-lez v4, :cond_0

    .line 279
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    .line 280
    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 281
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    add-int/lit8 v5, v2, -0x1

    sget-object v6, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 283
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 280
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 288
    .end local v2           #i:I
    :cond_3
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    .line 289
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    .line 290
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-ge v2, v4, :cond_4

    .line 291
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    sget-object v5, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v2

    .line 293
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    :cond_4
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    .line 298
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lez v4, :cond_0

    .line 299
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    .line 300
    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    :goto_2
    if-lez v2, :cond_0

    .line 301
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v5, v2, -0x1

    sget-object v6, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 303
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 300
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 308
    .end local v2           #i:I
    :cond_5
    if-ne v3, v7, :cond_0

    .line 309
    aget v4, v0, v8

    if-ge p1, v4, :cond_0

    if-lez p2, :cond_0

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mUpWidget_height:I

    if-ge p2, v4, :cond_0

    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 311
    iput v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    .line 312
    sput-boolean v6, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    .line 313
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    .line 314
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    .line 315
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "move the first"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    .line 317
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rightNumber is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lez v4, :cond_0

    .line 319
    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    .line 320
    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    .restart local v2       #i:I
    :goto_3
    if-lez v2, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v5, v2, -0x1

    sget-object v6, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 323
    iget-object v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 320
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method private onDrag(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 224
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 226
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 230
    return-void
.end method

.method private onDrop(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x3f80

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 411
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguradEditGridView;->recoverWidget()V

    .line 413
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    .line 414
    .local v1, adapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 415
    .local v0, aa:[I
    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 416
    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 417
    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    sub-int/2addr p2, v3

    .line 422
    :goto_0
    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_2

    .line 423
    iget-boolean v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->isPopToast:Z

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->myContext:Landroid/content/Context;

    const v4, 0x7f09093e

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 426
    :cond_0
    iput-boolean v8, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->isPopToast:Z

    .line 427
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 457
    :goto_1
    return-void

    .line 420
    :cond_1
    aget v3, v0, v6

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    sub-int p2, v3, v4

    goto :goto_0

    .line 431
    :cond_2
    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v3}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getCount()I

    move-result v3

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_4

    .line 433
    aget v3, v0, v8

    sub-int/2addr p1, v3

    .line 437
    :goto_2
    const/4 v2, -0x1

    .line 438
    .local v2, result:I
    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    .line 439
    if-le v2, v5, :cond_5

    .line 440
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mViewPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    iget v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    invoke-virtual {v6, v7}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->deletePosion(IILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    .line 454
    :cond_3
    :goto_3
    iput-boolean v8, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->isPopToast:Z

    .line 456
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 435
    .end local v2           #result:I
    :cond_4
    aget v3, v0, v8

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointX:I

    sub-int p1, v3, v4

    goto :goto_2

    .line 442
    .restart local v2       #result:I
    :cond_5
    if-ne v2, v5, :cond_6

    if-lez p2, :cond_6

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mUpWidget_height:I

    if-ge p2, v3, :cond_6

    aget v3, v0, v8

    if-ge p1, v3, :cond_6

    .line 445
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->TAG:Ljava/lang/String;

    const-string v4, "add in the first"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mViewPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    invoke-virtual {v5, v6}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v5

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->deletePosion(IILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    goto :goto_3

    .line 448
    :cond_6
    if-ne v2, v5, :cond_3

    if-lez p2, :cond_3

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mUpWidget_height:I

    if-ge p2, v3, :cond_3

    int-to-float v3, p1

    sget-object v4, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mUpGDAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;

    invoke-virtual {v4}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$GDSimpleAdapter;->getCount()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x432f

    sget v6, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->scale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 451
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mViewPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    invoke-virtual {v5, v6}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;->deletePosion(IILcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;)V

    goto :goto_3
.end method

.method private recoverWidget()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 356
    sget-boolean v1, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    if-nez v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 360
    :cond_0
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    if-ne v1, v7, :cond_1

    .line 361
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lez v1, :cond_5

    .line 362
    :goto_1
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lt v1, v6, :cond_5

    .line 363
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 365
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 362
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    goto :goto_1

    .line 370
    :cond_1
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    sget-object v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 374
    :cond_2
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-lez v1, :cond_5

    .line 375
    :goto_2
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-lt v1, v6, :cond_5

    .line 376
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 378
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->wholeUpItem:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 375
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    goto :goto_2

    .line 384
    :cond_3
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-lez v1, :cond_4

    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-ge v0, v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    sget-object v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 388
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 391
    .end local v0           #i:I
    :cond_4
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lez v1, :cond_5

    .line 392
    :goto_4
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lt v1, v6, :cond_5

    .line 393
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    iget v4, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    iget v5, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 395
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 392
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    goto :goto_4

    .line 402
    :cond_5
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->requestLayout()V

    .line 403
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 404
    sput-boolean v8, Lcom/android/jrdsettings/KeyguradEditGridView;->upSwitched:Z

    .line 405
    iput v8, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    iput v8, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    .line 406
    iput v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->index:I

    .line 407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    goto/16 :goto_0
.end method

.method private startDrag(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x2

    .line 109
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 110
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 111
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointX:I

    sub-int v2, p1, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 112
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 113
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 121
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 126
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;->getItem(I)Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;

    move-result-object v1

    iget-object v1, v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowManager:Landroid/view/WindowManager;

    .line 137
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iput-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    .line 139
    return-void
.end method

.method private stopDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iput-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragImageView:Landroid/widget/ImageView;

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mIsDragging:Z

    .line 466
    :cond_0
    return-void
.end method

.method private updateUpwidget(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 335
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    .line 336
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    if-ge v0, v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    sget-object v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 340
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftItemViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    sget-object v1, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->leftNumber:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    .line 344
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    if-lez v1, :cond_1

    .line 345
    iget v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    .line 346
    iget v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightNumber:I

    :goto_1
    if-lez v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upGridView:Lcom/android/jrdsettings/CoverGridView;

    add-int v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 349
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->rightItemViews:[Landroid/view/View;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->halfUpItem:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 354
    :cond_1
    return-void
.end method


# virtual methods
.method protected beginDragging()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 232
    iget-boolean v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mIsDragging:Z

    .line 233
    .local v0, wasDragging:Z
    iput-boolean v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mIsDragging:Z

    .line 234
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected determineDraggingStart(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 202
    iget v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mLastMotionX:I

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 203
    .local v3, xDiff:I
    iget v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mLastMotionY:I

    sub-int v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 205
    .local v4, yDiff:I
    iget v2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mTouchSlop:I

    .line 206
    .local v2, touchSlop:I
    if-le v4, v2, :cond_3

    move v5, v6

    .line 207
    .local v5, yMoved:Z
    :goto_0
    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff8

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    move v1, v6

    .line 208
    .local v1, isUpwardMotion:Z
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    iget v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguradEditGridView;->beginDragging()Z

    move-result v0

    .line 211
    .local v0, drag:Z
    if-ne v0, v6, :cond_1

    .line 212
    sget v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    sget v7, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/KeyguradEditGridView;->startDrag(II)V

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    .line 218
    .end local v0           #drag:Z
    :cond_2
    return-void

    .end local v1           #isUpwardMotion:Z
    .end local v5           #yMoved:Z
    :cond_3
    move v5, v1

    .line 206
    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguradEditGridView;->beginDragging()Z

    move-result v0

    .line 100
    .local v0, drag:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    sget v1, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    sget v2, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    invoke-direct {p0, v1, v2}, Lcom/android/jrdsettings/KeyguradEditGridView;->startDrag(II)V

    .line 103
    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, -0x1

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 145
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 146
    .local v5, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sput v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sput v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 149
    .local v0, action:I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 151
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mLastMotionX:I

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mLastMotionY:I

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v2, v6

    .line 154
    .local v2, rawx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    .line 155
    .local v3, rawy:I
    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mLastMotionX:I

    sub-int v6, v2, v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragOffsetX:I

    .line 156
    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mLastMotionY:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragOffsetY:I

    .line 158
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    .line 159
    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    if-eq v6, v7, :cond_0

    .line 163
    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    .line 164
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;

    iget-object v1, v6, Lcom/android/jrdsettings/KeyguradEditGridView$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 165
    .local v1, imageview:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int v6, v4, v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointX:I

    .line 166
    iget-object v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int v6, v5, v6

    iput v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPointY:I

    goto :goto_0

    .line 169
    .end local v1           #imageview:Landroid/widget/ImageView;
    .end local v2           #rawx:I
    .end local v3           #rawy:I
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mIsDragging:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    if-eq v6, v7, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguradEditGridView;->stopDrag()V

    .line 171
    sget v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    sget v7, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/KeyguradEditGridView;->onDrop(II)V

    goto/16 :goto_0

    .line 176
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mIsDragging:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    if-eq v6, v7, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguradEditGridView;->stopDrag()V

    .line 179
    sget v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    sget v7, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/KeyguradEditGridView;->onDrop(II)V

    goto/16 :goto_0

    .line 183
    :pswitch_3
    iget v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->dragPosition:I

    if-eq v6, v7, :cond_0

    .line 184
    iget-boolean v6, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mIsDragging:Z

    if-nez v6, :cond_1

    .line 185
    invoke-virtual {p0, v4, v5}, Lcom/android/jrdsettings/KeyguradEditGridView;->determineDraggingStart(II)V

    goto/16 :goto_0

    .line 187
    :cond_1
    sget v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    sget v7, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/KeyguradEditGridView;->onDrag(II)V

    .line 188
    sget v6, Lcom/android/jrdsettings/KeyguradEditGridView;->dropX:I

    sget v7, Lcom/android/jrdsettings/KeyguradEditGridView;->dropY:I

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/KeyguradEditGridView;->moving(II)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setGridItems(Ljava/util/ArrayList;Landroid/view/LayoutInflater;Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;)V
    .locals 2
    .parameter
    .parameter "inflater"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/KeyguardWidgetEditActivity$Item;>;"
    new-instance v0, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->myContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;-><init>(Lcom/android/jrdsettings/KeyguradEditGridView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    .line 90
    iput-object p2, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    iput-object p3, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mViewPagerAdapter:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$ViewPagerAdapter;

    .line 92
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguradEditGridView;->mAppWidgetAdapter:Lcom/android/jrdsettings/KeyguradEditGridView$AppWidgetAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    return-void
.end method
