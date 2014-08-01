.class public Lcom/android/jrdsettings/JrdFontSizePreference;
.super Lcom/android/jrdsettings/WarnedListPreference;
.source "JrdFontSizePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final FONT_EXTRA_LARGE:I = 0x3

.field private static final FONT_LARGR:I = 0x2

.field private static final FONT_NORMAL:I = 0x1

.field private static final FONT_SMALL:I = 0x0

.field private static final KEY_JRD_FONT_SIZE:Ljava/lang/String; = "jrd_font_size"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mExtraLargeFontButtonGroup:Landroid/widget/LinearLayout;

.field private mExtraLargeFontImage:Landroid/widget/ImageView;

.field private mFontSizeListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private final mIndices:[Ljava/lang/String;

.field private mIsUpdateFont:Z

.field private mLargeFontButtonGroup:Landroid/widget/LinearLayout;

.field private mLargeFontImage:Landroid/widget/ImageView;

.field private mNormalFontButtonGroup:Landroid/widget/LinearLayout;

.field private mNormalFontImage:Landroid/widget/ImageView;

.field private mRadioButtonsViews:[Landroid/widget/RadioButton;

.field private mSmallFontButtonGroup:Landroid/widget/LinearLayout;

.field private mSmallFontImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/WarnedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, "JrdFontSizePreference"

    iput-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mCurConfig:Landroid/content/res/Configuration;

    .line 49
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mIndices:[Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/jrdsettings/JrdFontSizePreference$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/JrdFontSizePreference$1;-><init>(Lcom/android/jrdsettings/JrdFontSizePreference;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/android/jrdsettings/JrdFontSizePreference$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/JrdFontSizePreference$2;-><init>(Lcom/android/jrdsettings/JrdFontSizePreference;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mFontSizeListener:Landroid/view/View$OnClickListener;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/JrdFontSizePreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mIndices:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateFontSize()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    .line 160
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 161
    .local v3, values:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_small"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 163
    .local v2, small:F
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_large"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 165
    .local v1, large:F
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_extralarge"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 167
    .local v0, extraLarge:F
    const-string v4, "JrdFontSizePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size small = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v4, "JrdFontSizePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size large = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v4, "JrdFontSizePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size extraLarge = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    cmpl-float v4, v1, v7

    if-nez v4, :cond_0

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    .line 172
    :cond_0
    aget-object v4, v3, v8

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v7

    if-eqz v4, :cond_1

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 175
    :cond_1
    aget-object v4, v3, v9

    if-eqz v4, :cond_2

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_2

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 178
    :cond_2
    aget-object v4, v3, v10

    if-eqz v4, :cond_3

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_3

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 182
    :cond_3
    if-eqz v3, :cond_4

    .line 183
    invoke-virtual {p0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 185
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mIsUpdateFont:Z

    .line 187
    :cond_5
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 7
    .parameter "val"

    .prologue
    .line 199
    iget-boolean v5, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mIsUpdateFont:Z

    if-eqz v5, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    .local v2, indicesEntry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 202
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 203
    .local v4, thisVal:F
    cmpl-float v5, p1, v4

    if-nez v5, :cond_0

    .line 220
    .end local v0           #i:I
    .end local v2           #indicesEntry:[Ljava/lang/CharSequence;
    .end local v4           #thisVal:F
    :goto_1
    return v0

    .line 201
    .restart local v0       #i:I
    .restart local v2       #indicesEntry:[Ljava/lang/CharSequence;
    .restart local v4       #thisVal:F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0           #i:I
    .end local v2           #indicesEntry:[Ljava/lang/CharSequence;
    .end local v4           #thisVal:F
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, indices:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 211
    .local v3, lastVal:F
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 212
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 213
    .restart local v4       #thisVal:F
    sub-float v5, v4, v3

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 216
    :cond_2
    move v3, v4

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 218
    .end local v4           #thisVal:F
    :cond_3
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 220
    .end local v1           #indices:[Ljava/lang/String;
    .end local v3           #lastVal:F
    .restart local v2       #indicesEntry:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, fontInfo:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "jrd_font_size"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    sparse-switch p2, :sswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 290
    :sswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 293
    :sswitch_1
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 299
    :sswitch_3
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x7f0b00e8 -> :sswitch_0
        0x7f0b00eb -> :sswitch_1
        0x7f0b00ee -> :sswitch_2
        0x7f0b00f1 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x4

    .line 131
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040052

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b00e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontButtonGroup:Landroid/widget/LinearLayout;

    .line 137
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontButtonGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mFontSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    .line 139
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontButtonGroup:Landroid/widget/LinearLayout;

    .line 141
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontButtonGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mFontSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v2, 0x7f0b00ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    .line 143
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontButtonGroup:Landroid/widget/LinearLayout;

    .line 145
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontButtonGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mFontSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v2, 0x7f0b00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    .line 147
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontButtonGroup:Landroid/widget/LinearLayout;

    .line 149
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontButtonGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mFontSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v2, 0x7f0b00f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    .line 151
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdFontSizePreference;->updateFontSize()V

    .line 153
    invoke-virtual {p0}, Lcom/android/jrdsettings/JrdFontSizePreference;->readFontSizePreference()V

    .line 154
    return-object v1
.end method

.method public readFontSizePreference()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 224
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 226
    .local v2, fontInfo:Landroid/content/SharedPreferences;
    const v0, 0x7f0b00e9

    .line 227
    .local v0, defaultFontGroup:I
    const-string v4, "ro_def_font_size"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, defaultFontSize:I
    packed-switch v1, :pswitch_data_0

    .line 244
    :goto_0
    const-string v4, "jrd_font_size"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 249
    .local v3, fontsize:I
    const v4, 0x7f0b00e6

    if-ne v3, v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    :cond_0
    :goto_1
    return-void

    .line 230
    .end local v3           #fontsize:I
    :pswitch_0
    const v0, 0x7f0b00e6

    .line 231
    goto :goto_0

    .line 233
    :pswitch_1
    const v0, 0x7f0b00e9

    .line 234
    goto :goto_0

    .line 236
    :pswitch_2
    const v0, 0x7f0b00ec

    .line 237
    goto :goto_0

    .line 239
    :pswitch_3
    const v0, 0x7f0b00ef

    .line 240
    goto :goto_0

    .line 256
    .restart local v3       #fontsize:I
    :cond_1
    const v4, 0x7f0b00e9

    if-ne v3, v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 263
    :cond_2
    const v4, 0x7f0b00ec

    if-ne v3, v4, :cond_3

    .line 264
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 270
    :cond_3
    const v4, 0x7f0b00ef

    if-ne v3, v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mSmallFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mNormalFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mExtraLargeFontImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 192
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "JrdFontSizePreference"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
