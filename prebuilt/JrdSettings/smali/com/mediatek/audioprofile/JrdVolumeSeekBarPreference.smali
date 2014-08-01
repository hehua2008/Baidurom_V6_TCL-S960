.class public Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
.super Landroid/preference/Preference;
.source "JrdVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;,
        Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;,
        Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final JRD_ALARMS:Ljava/lang/String; = "jrd_alarms"

.field private static final JRD_MUSIC:Ljava/lang/String; = "jrd_music"

.field private static final JRD_NOTIF:Ljava/lang/String; = "jrd_notifaction"

.field private static final JRD_RING_NOTIF:Ljava/lang/String; = "jrd_ring_and_notifaction"

.field private static final JRD_SYSTEM:Ljava/lang/String; = "jrd_system"

.field private static final TAG:Ljava/lang/String; = "Settings/VolPref"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mHeadSetPlugListener:Landroid/content/BroadcastReceiver;

.field private mPreferenceKey:Ljava/lang/String;

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSeekBarClick:Z

.field private mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarClick:Z

    .line 129
    new-instance v1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;-><init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mHeadSetPlugListener:Landroid/content/BroadcastReceiver;

    .line 112
    const v1, 0x7f040057

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 114
    invoke-super {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-super {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    .line 118
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    const-string v1, "audioprofile"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mHeadSetPlugListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->changeVibrateAndSlientPreferState(Z)V

    return-void
.end method

.method private changeVibrateAndSlientPreferState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.jrd.setSilentAndVibrateUncheck"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "setSilentAndVibrateUncheck"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 608
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 144
    const v9, 0x7f0b00fc

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 146
    .local v6, titleView:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 148
    .local v5, title:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 149
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v9, 0x7f0b00fd

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 157
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_4

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    if-nez v1, :cond_2

    .line 161
    const/4 v2, 0x0

    .line 163
    .local v2, iconResId:I
    iget-object v9, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v10, "jrd_ring_and_notifaction"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 164
    const v2, 0x7f020086

    .line 180
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 183
    .end local v2           #iconResId:I
    :cond_2
    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_3
    if-eqz v1, :cond_b

    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, context:Landroid/content/Context;
    const v7, 0x7f0b00fe

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 192
    .local v4, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 193
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    iget-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 196
    iget-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v8, "jrd_ring_and_notifaction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 197
    new-instance v7, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    const/4 v8, 0x2

    invoke-direct {v7, p0, v0, v4, v8}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    .line 218
    :cond_5
    :goto_3
    return-void

    .line 152
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 166
    .end local v5           #title:Ljava/lang/CharSequence;
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v2       #iconResId:I
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_7
    iget-object v9, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v10, "jrd_notifaction"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 167
    const v2, 0x7f020085

    goto :goto_1

    .line 170
    :cond_8
    iget-object v9, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v10, "jrd_system"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 171
    const v2, 0x7f020088

    goto :goto_1

    .line 173
    :cond_9
    iget-object v9, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v10, "jrd_music"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 174
    const v2, 0x7f020089

    goto :goto_1

    .line 176
    :cond_a
    iget-object v9, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v10, "jrd_alarms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 177
    const v2, 0x7f020084

    goto :goto_1

    .end local v2           #iconResId:I
    :cond_b
    move v7, v8

    .line 186
    goto :goto_2

    .line 200
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #seekBar:Landroid/widget/SeekBar;
    :cond_c
    iget-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v8, "jrd_notifaction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 201
    new-instance v7, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    const/4 v8, 0x5

    invoke-direct {v7, p0, v0, v4, v8}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    goto :goto_3

    .line 205
    :cond_d
    iget-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v8, "jrd_system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 206
    new-instance v7, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v0, v4, v8}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    goto :goto_3

    .line 209
    :cond_e
    iget-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v8, "jrd_music"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 210
    new-instance v7, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v0, v4, v8}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    goto :goto_3

    .line 212
    :cond_f
    iget-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;

    const-string v8, "jrd_alarms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 213
    new-instance v7, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v0, v4, v8}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    goto/16 :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 222
    sparse-switch p2, :sswitch_data_0

    .line 228
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 226
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 279
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 271
    check-cast v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;

    .line 272
    .local v0, myState:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    iget-object v2, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->getVolumeStore()Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    move-result-object v1

    .line 275
    .local v1, volumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;
    iget-object v2, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 243
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 248
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 249
    .local v0, myState:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;
    iget-object v3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SavedState;->getVolumeStore()Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;

    move-result-object v2

    .line 252
    .local v2, volumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;
    iget-object v3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;)V

    .end local v2           #volumeStore:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;
    :cond_1
    move-object v1, v0

    .line 255
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarClick:Z

    return v0
.end method

.method public setDisableSeekBar()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarClick:Z

    .line 616
    return-void
.end method

.method public setEnableSeekBar()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarClick:Z

    .line 612
    return-void
.end method
