.class public Lcom/android/jrdsettings/audioshare/AudioShareHelp;
.super Landroid/app/Activity;
.source "AudioShareHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/audioshare/AudioShareHelp$1;,
        Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;,
        Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AudioShareHelp"


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

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mCurrentItem:I

    .line 65
    iput v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I

    .line 66
    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mPostPositionX:F

    .line 67
    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mCurrentPositionX:F

    .line 154
    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/audioshare/AudioShareHelp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDots:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mImageResIds:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 111
    :pswitch_1
    iget v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mPostPositionX:F

    goto :goto_0

    .line 118
    :pswitch_2
    iget v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mCurrentPositionX:F

    .line 120
    iget v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mPostPositionX:F

    iget v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mCurrentPositionX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 122
    const/4 v0, 0x1

    goto :goto_1

    .line 125
    :cond_1
    iput v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mCurrentPositionX:F

    .line 126
    iput v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mPostPositionX:F

    goto :goto_0

    .line 109
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

    const/4 v7, 0x2

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v6, 0x7f04000c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    new-array v6, v7, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mImageResIds:[I

    .line 77
    new-array v6, v7, [I

    fill-array-data v6, :array_1

    iput-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mTitleResIds:[I

    .line 79
    new-array v6, v7, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDescResIds:[I

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 85
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mImageResIds:[I

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 86
    const v6, 0x7f04000d

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 87
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    .local v2, imageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mImageResIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, title:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mTitleResIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, desc:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDescResIds:[I

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0           #desc:Landroid/widget/TextView;
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v4           #title:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDots:Ljava/util/List;

    .line 97
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDots:Ljava/util/List;

    const v7, 0x7f0b000f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDots:Ljava/util/List;

    const v7, 0x7f0b0010

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const v6, 0x7f0b000e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 101
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;

    invoke-direct {v7, p0, v8}, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;Lcom/android/jrdsettings/audioshare/AudioShareHelp$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;

    invoke-direct {v7, p0, v8}, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;Lcom/android/jrdsettings/audioshare/AudioShareHelp$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 103
    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 77
    :array_1
    .array-data 0x4
        0xdct 0x1t 0x9t 0x7ft
        0xdet 0x1t 0x9t 0x7ft
    .end array-data

    .line 79
    :array_2
    .array-data 0x4
        0xddt 0x1t 0x9t 0x7ft
        0xdft 0x1t 0x9t 0x7ft
    .end array-data
.end method
