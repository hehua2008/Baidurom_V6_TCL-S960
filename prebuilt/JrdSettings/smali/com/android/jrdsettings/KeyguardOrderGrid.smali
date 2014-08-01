.class public Lcom/android/jrdsettings/KeyguardOrderGrid;
.super Landroid/widget/GridView;
.source "KeyguardOrderGrid.java"


# instance fields
.field private LastAnimationID:Ljava/lang/String;

.field private Remainder:I

.field private dragImageView:Landroid/widget/ImageView;

.field private dragItemView:Landroid/view/ViewGroup;

.field private dragOffsetX:I

.field private dragOffsetY:I

.field private dragPointX:I

.field private dragPointY:I

.field private dragPosition:I

.field private dropPosition:I

.field flag:Z

.field private halfItemWidth:I

.field private holdPosition:I

.field private isCountXY:Z

.field private isMoving:Z

.field private itemTotalCount:I

.field private leftBottomPosition:I

.field private leftBtmItemY:I

.field private mLastX:I

.field private mLastY:I

.field private nColumns:I

.field private nRows:I

.field private specialItemY:I

.field private specialPosition:I

.field private startPosition:I

.field private touchX:I

.field private touchY:I

.field private windowManager:Landroid/view/WindowManager;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;

.field private xtox:I

.field private ytoy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I

    .line 26
    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    .line 35
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragItemView:Landroid/view/ViewGroup;

    .line 38
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowManager:Landroid/view/WindowManager;

    .line 39
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->flag:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I

    .line 26
    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    .line 35
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragItemView:Landroid/view/ViewGroup;

    .line 38
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowManager:Landroid/view/WindowManager;

    .line 39
    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->flag:Z

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastX:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->touchX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->halfItemWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nRows:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nRows:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialItemY:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBtmItemY:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/jrdsettings/KeyguardOrderGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragItemView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/jrdsettings/KeyguardOrderGrid;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastY:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/jrdsettings/KeyguardOrderGrid;Landroid/graphics/Bitmap;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->startDrag(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/jrdsettings/KeyguardOrderGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardOrderGrid;->hideDropItem()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/jrdsettings/KeyguardOrderGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/jrdsettings/KeyguardOrderGrid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->LastAnimationID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->touchY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointX:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointY:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/KeyguardOrderGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/jrdsettings/KeyguardOrderGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z

    return p1
.end method

.method private getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    const v0, 0x3f83d70a

    .line 320
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 321
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private hideDropItem()V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/KeyguardOrderAdapter;

    .line 308
    .local v0, adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->showDropItem(Z)V

    .line 309
    return-void
.end method

.method private onDrag(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 291
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragOffsetX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 292
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 294
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    :cond_0
    return-void
.end method

.method private onDrop(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/KeyguardOrderAdapter;

    .line 281
    .local v0, adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->showDropItem(Z)V

    .line 282
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 283
    return-void
.end method

.method private startDrag(Landroid/graphics/Bitmap;II)V
    .locals 5
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, -0x2

    .line 174
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardOrderGrid;->stopDrag()V

    .line 175
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 176
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 180
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointX:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragOffsetX:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 181
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointY:I

    sub-int v2, p3, v2

    iget v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragOffsetY:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f4ccccd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 184
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 191
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 192
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 193
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowManager:Landroid/view/WindowManager;

    .line 197
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    .line 200
    return-void
.end method

.method private stopDrag()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public GetItemShadow(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 136
    return-void
.end method

.method public OnMove(II)V
    .locals 14
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 204
    .local v1, TempPosition:I
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialItemY:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastY:I

    sub-int v10, p2, v11

    .line 206
    .local v10, sOffsetY:I
    :goto_0
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBtmItemY:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastY:I

    sub-int v8, p2, v11

    .line 208
    .local v8, lOffsetY:I
    :goto_1
    const/4 v11, -0x1

    if-eq v1, v11, :cond_6

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    if-eq v1, v11, :cond_6

    .line 210
    iput v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    .line 219
    :cond_0
    :goto_2
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I

    if-eq v11, v12, :cond_1

    .line 220
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I

    iput v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    .line 221
    :cond_1
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    sub-int v0, v11, v12

    .line 222
    .local v0, MoveNum:I
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I

    if-eq v11, v12, :cond_2

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    if-ne v11, v12, :cond_2

    .line 223
    const/4 v0, 0x0

    .line 224
    :cond_2
    if-eqz v0, :cond_d

    .line 225
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 227
    .local v7, itemMoveNum:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v7, :cond_d

    .line 228
    if-lez v0, :cond_a

    .line 229
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    .line 230
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v11, v12

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    iget v13, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v12, v13

    if-ne v11, v12, :cond_8

    const/4 v2, -0x1

    .line 232
    .local v2, Xoffset:I
    :goto_4
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v11, v12

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    iget v13, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v12, v13

    if-ne v11, v12, :cond_9

    const/4 v3, 0x0

    .line 241
    .local v3, Yoffset:I
    :goto_5
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 242
    .local v9, moveView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->getMoveAnimation(II)Landroid/view/animation/Animation;

    move-result-object v5

    .line 243
    .local v5, animation:Landroid/view/animation/Animation;
    invoke-virtual {v9, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    iput v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    .line 245
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    if-ne v11, v12, :cond_3

    .line 246
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->LastAnimationID:Ljava/lang/String;

    .line 247
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/jrdsettings/KeyguardOrderAdapter;

    .line 248
    .local v4, adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;
    new-instance v11, Lcom/android/jrdsettings/KeyguardOrderGrid$2;

    invoke-direct {v11, p0, v4}, Lcom/android/jrdsettings/KeyguardOrderGrid$2;-><init>(Lcom/android/jrdsettings/KeyguardOrderGrid;Lcom/android/jrdsettings/KeyguardOrderAdapter;)V

    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 204
    .end local v0           #MoveNum:I
    .end local v2           #Xoffset:I
    .end local v3           #Yoffset:I
    .end local v4           #adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;
    .end local v5           #animation:Landroid/view/animation/Animation;
    .end local v6           #i:I
    .end local v7           #itemMoveNum:I
    .end local v8           #lOffsetY:I
    .end local v9           #moveView:Landroid/view/ViewGroup;
    .end local v10           #sOffsetY:I
    :cond_4
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialItemY:I

    sub-int v11, p2, v11

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->halfItemWidth:I

    sub-int v10, v11, v12

    goto/16 :goto_0

    .line 206
    .restart local v10       #sOffsetY:I
    :cond_5
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBtmItemY:I

    sub-int v11, p2, v11

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->halfItemWidth:I

    sub-int v8, v11, v12

    goto/16 :goto_1

    .line 211
    .restart local v8       #lOffsetY:I
    :cond_6
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I

    if-ne v11, v12, :cond_7

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->halfItemWidth:I

    if-lt v10, v11, :cond_7

    .line 213
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    goto/16 :goto_2

    .line 214
    :cond_7
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I

    if-ne v11, v12, :cond_0

    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->halfItemWidth:I

    if-lt v8, v11, :cond_0

    .line 217
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I

    goto/16 :goto_2

    .line 230
    .restart local v0       #MoveNum:I
    .restart local v6       #i:I
    .restart local v7       #itemMoveNum:I
    :cond_8
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    add-int/lit8 v2, v11, -0x1

    goto/16 :goto_4

    .line 232
    .restart local v2       #Xoffset:I
    :cond_9
    const/4 v3, -0x1

    goto :goto_5

    .line 235
    .end local v2           #Xoffset:I
    :cond_a
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    .line 236
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v11, v12

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    iget v13, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v12, v13

    if-ne v11, v12, :cond_b

    const/4 v2, 0x1

    .line 238
    .restart local v2       #Xoffset:I
    :goto_6
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v11, v12

    iget v12, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->holdPosition:I

    iget v13, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    div-int/2addr v12, v13

    if-ne v11, v12, :cond_c

    const/4 v3, 0x0

    .restart local v3       #Yoffset:I
    :goto_7
    goto/16 :goto_5

    .line 236
    .end local v2           #Xoffset:I
    .end local v3           #Yoffset:I
    :cond_b
    iget v11, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I

    add-int/lit8 v11, v11, -0x1

    neg-int v2, v11

    goto :goto_6

    .line 238
    .restart local v2       #Xoffset:I
    :cond_c
    const/4 v3, 0x1

    goto :goto_7

    .line 276
    .end local v2           #Xoffset:I
    .end local v6           #i:I
    .end local v7           #itemMoveNum:I
    :cond_d
    return-void
.end method

.method public getMoveAnimation(II)Landroid/view/animation/Animation;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 312
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, p1

    int-to-float v8, p2

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 315
    .local v0, go:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 316
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 317
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->setOnItemLongClickListener(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 151
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 152
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 170
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 154
    .restart local v0       #x:I
    .restart local v1       #y:I
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z

    if-nez v2, :cond_1

    .line 155
    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastX:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->xtox:I

    .line 156
    iget v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastY:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->ytoy:I

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z

    .line 159
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->onDrag(II)V

    .line 160
    iget-boolean v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->OnMove(II)V

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-direct {p0}, Lcom/android/jrdsettings/KeyguardOrderGrid;->stopDrag()V

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->onDrop(II)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLongFlag(Z)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->flag:Z

    .line 65
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->touchX:I

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->touchY:I

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->touchX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragOffsetX:I

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->touchY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid;->dragOffsetY:I

    .line 77
    new-instance v0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/KeyguardOrderGrid$1;-><init>(Lcom/android/jrdsettings/KeyguardOrderGrid;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 131
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
