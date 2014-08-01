.class public Lcom/android/jrdsettings/dlna/DLNAHelp;
.super Landroid/app/Activity;
.source "DLNAHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/dlna/DLNAHelp$1;,
        Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;,
        Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DLNAHelp"


# instance fields
.field private mCurrentItem:I

.field private mCurrentPositionX:F

.field private mDescResIds:[I

.field private mDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mImageResIds:[I

.field private mOldPosition:I

.field private mPostPositionX:F

.field private mTitleResIds:[I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput v1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mCurrentItem:I

    .line 64
    iput v1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I

    .line 65
    iput v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mPostPositionX:F

    .line 66
    iput v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mCurrentPositionX:F

    .line 158
    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/dlna/DLNAHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/dlna/DLNAHelp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/dlna/DLNAHelp;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/dlna/DLNAHelp;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mImageResIds:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/dlna/DLNAHelp;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 115
    :pswitch_1
    iget v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I

    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mPostPositionX:F

    goto :goto_0

    .line 122
    :pswitch_2
    iget v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I

    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mCurrentPositionX:F

    .line 124
    iget v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mPostPositionX:F

    iget v1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mCurrentPositionX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    const/4 v0, 0x1

    goto :goto_1

    .line 129
    :cond_1
    iput v2, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mCurrentPositionX:F

    .line 130
    iput v2, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mPostPositionX:F

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v6, 0x7f040046

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    new-array v6, v7, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mImageResIds:[I

    .line 77
    new-array v6, v7, [I

    fill-array-data v6, :array_1

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mTitleResIds:[I

    .line 80
    new-array v6, v7, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDescResIds:[I

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 87
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mImageResIds:[I

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 88
    const v6, 0x7f040047

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 89
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 90
    .local v2, imageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mImageResIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    .local v4, title:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mTitleResIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 93
    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    .local v0, desc:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDescResIds:[I

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0           #desc:Landroid/widget/TextView;
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v4           #title:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;

    .line 99
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;

    const v7, 0x7f0b000f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;

    const v7, 0x7f0b0010

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;

    const v7, 0x7f0b00a0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;

    const v7, 0x7f0b00a1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const v6, 0x7f0b000e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 105
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;

    invoke-direct {v7, p0, v8}, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;-><init>(Lcom/android/jrdsettings/dlna/DLNAHelp;Lcom/android/jrdsettings/dlna/DLNAHelp$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNAHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;

    invoke-direct {v7, p0, v8}, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;-><init>(Lcom/android/jrdsettings/dlna/DLNAHelp;Lcom/android/jrdsettings/dlna/DLNAHelp$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    return-void

    .line 74
    nop

    :array_0
    .array-data 0x4
        0x53t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
    .end array-data

    .line 77
    :array_1
    .array-data 0x4
        0xc4t 0x1t 0x9t 0x7ft
        0xc6t 0x1t 0x9t 0x7ft
        0xcat 0x1t 0x9t 0x7ft
        0xc8t 0x1t 0x9t 0x7ft
    .end array-data

    .line 80
    :array_2
    .array-data 0x4
        0xc5t 0x1t 0x9t 0x7ft
        0xc7t 0x1t 0x9t 0x7ft
        0xcbt 0x1t 0x9t 0x7ft
        0xc9t 0x1t 0x9t 0x7ft
    .end array-data
.end method
