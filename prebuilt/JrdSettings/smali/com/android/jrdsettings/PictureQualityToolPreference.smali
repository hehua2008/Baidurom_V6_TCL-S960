.class public Lcom/android/jrdsettings/PictureQualityToolPreference;
.super Landroid/preference/Preference;
.source "PictureQualityToolPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;,
        Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;
    }
.end annotation


# instance fields
.field CURRENT_DISPLAY_TEMPERATURE:Ljava/lang/String;

.field private MAX_PREVIEW_PICTURES_SIZE:I

.field TAG:Ljava/lang/String;

.field private currentValueSatur:I

.field private currentValueTemper:I

.field private current_pos:I

.field layoutInflater:Landroid/view/LayoutInflater;

.field mGestureListener:Landroid/view/View$OnTouchListener;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mProgress:I

.field private mProgressSatur:I

.field private mProgressTemper:I

.field private mSeekBarMutilSatur:Landroid/widget/SeekBar;

.field private mSeekBarMutilTemperature:Landroid/widget/SeekBar;

.field private mViewPager:Lcom/android/jrdsettings/ChildViewPager;

.field private maxSaturRange:I

.field private startValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->MAX_PREVIEW_PICTURES_SIZE:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;

    .line 41
    const-string v0, "PictureQuality"

    iput-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgress:I

    .line 43
    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->startValue:I

    .line 46
    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I

    .line 50
    const-string v0, "current_display_temperature"

    iput-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->CURRENT_DISPLAY_TEMPERATURE:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    const-string v1, "PictureQualityToolPreference called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->layoutInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/PictureQualityToolPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgressSatur:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgressSatur:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/PictureQualityToolPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->maxSaturRange:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/PictureQualityToolPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->setSystemColor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/PictureQualityToolPreference;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/PictureQualityToolPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/PictureQualityToolPreference;)Lcom/android/jrdsettings/ChildViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;

    return-object v0
.end method

.method private addPreviewList(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 9
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 165
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, extras:[Ljava/lang/String;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 167
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 168
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 169
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 170
    .local v6, res:I
    if-eqz v6, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 174
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, v8, :cond_1

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v7, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mImages:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    .end local v1           #extra:Ljava/lang/String;
    .end local v6           #res:I
    :cond_2
    const/4 v5, 0x0

    .line 182
    return-void
.end method

.method private findPreviewImage()V
    .locals 5

    .prologue
    const v4, 0x7f0a009d

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mImages:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 158
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v4}, Lcom/android/jrdsettings/PictureQualityToolPreference;->addPreviewList(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method private setSystemColor()V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgress:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgress:I

    if-gez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgress:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeSetGammaIndex(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindView called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    const-string v2, "oncreateview called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->findPreviewImage()V

    .line 64
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 65
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 66
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 68
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007a

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, layout:Landroid/view/View;
    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/ChildViewPager;

    iput-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;

    .line 71
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;

    new-instance v2, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;-><init>(Lcom/android/jrdsettings/PictureQualityToolPreference;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 72
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_item"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 74
    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeGetGammaIndex()I

    move-result v1

    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->currentValueTemper:I

    .line 75
    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeGetCustomPQParamIndex()I

    move-result v1

    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->currentValueSatur:I

    .line 77
    iget v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->currentValueTemper:I

    iget v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->startValue:I

    if-eq v1, v2, :cond_0

    .line 78
    iget v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->currentValueTemper:I

    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->startValue:I

    .line 79
    :cond_0
    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilTemperature:Landroid/widget/SeekBar;

    .line 81
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilTemperature:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeGetGammaRange()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 83
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilTemperature:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->startValue:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 84
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilTemperature:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;-><init>(Lcom/android/jrdsettings/PictureQualityToolPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilSatur:Landroid/widget/SeekBar;

    .line 88
    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeGetCustomPQParamRange()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->maxSaturRange:I

    .line 89
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilSatur:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityGammaJni;->nativeGetCustomPQParamRange()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 91
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilSatur:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->currentValueSatur:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    iget-object v1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference;->mSeekBarMutilSatur:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/jrdsettings/PictureQualityToolPreference$1;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/PictureQualityToolPreference$1;-><init>(Lcom/android/jrdsettings/PictureQualityToolPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    return-object v0
.end method
