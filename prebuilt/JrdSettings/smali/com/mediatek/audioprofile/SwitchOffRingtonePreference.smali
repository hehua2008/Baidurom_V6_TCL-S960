.class public Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "SwitchOffRingtonePreference.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field public static final PREFIX:Ljava/lang/String; = "persist.sys."

.field public static final SUFFIX:Ljava/lang/String; = "_off"

.field private static final TAG:Ljava/lang/String; = "SwitchOffRingtonePreference"

.field private static final path:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsNeedSync:Z

.field private mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const-string v0, "ro.config.power_off_general"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->path:Ljava/lang/String;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 102
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 114
    iput-object p1, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    return-void
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 215
    iget-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, internalCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, uriString:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    .end local v9           #uriString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, status:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mounted_ro"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 237
    .local v7, mediaCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 239
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 242
    .restart local v9       #uriString:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 243
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 245
    .end local v9           #uriString:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 248
    .end local v7           #mediaCursor:Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLastString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ori"
    .parameter "delimit"

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, values:[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 126
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 165
    iget-object v3, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    monitor-enter v3

    .line 167
    :try_start_0
    const-string v2, "persist.sys.switch_off"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, defaultPath:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const-string v2, ""

    sget-object v4, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 171
    iget-boolean v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "persist.sys.switch_off"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getCustpackDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/JRD_custres/audio/switch_on_off/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->path:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, value:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->path:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    iget-boolean v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    if-eqz v2, :cond_2

    .line 200
    const-string v2, "persist.sys.switch_off"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getCustpackDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/JRD_custres/audio/switch_on_off/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/custpack/JRD_custres/audio/switch_on_off/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 181
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    if-eqz v2, :cond_4

    .line 182
    const-string v2, "persist.sys.switch_off"

    const-string v4, "silent"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    const-string v5, "silent"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 210
    .end local v0           #defaultPath:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 9
    .parameter "ringtoneUri"

    .prologue
    .line 131
    iget-object v8, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    monitor-enter v8

    .line 133
    if-nez p1, :cond_1

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "persist.sys.switch_off"

    const-string v1, "silent"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    const-string v2, "silent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    monitor-exit v8

    .line 161
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, path:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    if-eqz v0, :cond_2

    .line 149
    const-string v0, "persist.sys.switch_off"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {p0, v7, v2}, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->getLastString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .end local v7           #path:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_4
    monitor-exit v8

    goto :goto_0

    .end local v6           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNeedSync(Z)V
    .locals 3
    .parameter "isNeedSync"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    .line 91
    const-string v0, "SwitchOffRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Is this mKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mIsNeedSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->getLastString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    .line 80
    const-string v0, "SwitchOffRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mKey is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
