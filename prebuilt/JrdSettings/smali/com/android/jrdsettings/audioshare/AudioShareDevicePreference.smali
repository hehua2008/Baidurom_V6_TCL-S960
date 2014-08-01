.class public Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
.super Landroid/preference/Preference;
.source "AudioShareDevicePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioShareDevicePreference"

.field private static mCurrentID:I

.field private static mCurrentMaxID:I

.field private static mCurrentSlectedDeviceUDN:Ljava/lang/String;


# instance fields
.field private mDeviceIcon:Landroid/widget/ImageView;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceUDN:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mIsSelected:Z

.field private mMyID:I

.field private mProgressFlag:Z

.field private mSelectButton:Landroid/widget/RadioButton;

.field mSelectedCallback:Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;

.field private mSharingProgress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mCurrentID:I

    .line 58
    sput v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mCurrentMaxID:I

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mCurrentSlectedDeviceUDN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mFriendlyName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceName:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceIcon:Landroid/widget/ImageView;

    .line 55
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    .line 56
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    .line 59
    sget v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mCurrentMaxID:I

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mMyID:I

    .line 62
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectedCallback:Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;

    .line 64
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    .line 70
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mFriendlyName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceName:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceIcon:Landroid/widget/ImageView;

    .line 55
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    .line 56
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    .line 59
    sget v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mCurrentMaxID:I

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mMyID:I

    .line 62
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectedCallback:Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;

    .line 64
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    .line 86
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;)V
    .locals 3
    .parameter "context"
    .parameter "udn"
    .parameter "name"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mFriendlyName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceName:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceIcon:Landroid/widget/ImageView;

    .line 55
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    .line 56
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    .line 59
    sget v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mCurrentMaxID:I

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mMyID:I

    .line 62
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectedCallback:Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;

    .line 64
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    .line 77
    iput-object p3, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mFriendlyName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;

    .line 79
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 80
    iput-object p4, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectedCallback:Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method clearStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 174
    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 94
    const v0, 0x7f0b0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceName:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setDeviceName(Ljava/lang/String;)V

    .line 96
    const v0, 0x7f0b0021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceIcon:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    .line 99
    const v0, 0x7f0b0023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    .line 101
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 116
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "AudioShareDevicePreference"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 123
    return-void
.end method

.method setDeviceIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    :cond_0
    return-void
.end method

.method setDeviceName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    return-void
.end method

.method setProgressVisiable(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    .line 139
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSharingProgress:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method setSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mProgressFlag:Z

    .line 155
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method setSelectedButton(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z

    .line 147
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 150
    :cond_0
    return-void
.end method
