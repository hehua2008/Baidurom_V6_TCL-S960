.class public Lcom/android/jrdsettings/JrdthemeSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "JrdthemeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/jrdsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/JrdthemeSettings$ViewHolder;,
        Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;,
        Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;
    }
.end annotation


# static fields
.field public static final MSG_DISMISS_SWITCH_DIALOG:I = 0x66

.field public static final MSG_DISPLAY_SWITCH_DIALOG:I = 0x65

.field public static final MSG_SWITCH_THEME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "JrdthemeSettings"


# instance fields
.field private custpackThemeFile:Ljava/io/File;

.field displayArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurThemeString:Ljava/lang/String;

.field private mCurrentPosition:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

.field private mThemeEntries:[Ljava/lang/String;

.field private mThemeList:Landroid/widget/ListView;

.field private mThemeResid:[Ljava/lang/Integer;

.field numberArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->numberArrayList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->displayArrayList:Ljava/util/ArrayList;

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/JrdthemeSettings;)Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/JrdthemeSettings;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getListItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, listItems:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/lang/String;

    const-string v5, "ic_jrdtheme_settings"

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, mThemeImageBase:Ljava/lang/String;
    const/4 v4, 0x0

    .line 197
    .local v4, resID:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 198
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "text"

    iget-object v6, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget v5, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurrentPosition:I

    if-ne v0, v5, :cond_0

    .line 202
    const-string v5, "checked"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/JrdthemeSettings;->numberArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "com.android.jrdsettings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 210
    const-string v5, "drawable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const-string v5, "checked"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 214
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method


# virtual methods
.method public initThemes()V
    .locals 17

    .prologue
    .line 116
    new-instance v15, Ljava/io/File;

    const-string v16, "/custpack/theme"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->custpackThemeFile:Ljava/io/File;

    .line 117
    const/4 v6, 0x0

    .line 118
    .local v6, fin:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 119
    .local v11, line:Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, bfR:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    const-string v15, "/custpack/jrdtheme.config"

    invoke-direct {v7, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 123
    .end local v6           #fin:Ljava/io/FileInputStream;
    .local v7, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 125
    .end local v1           #bfR:Ljava/io/BufferedReader;
    .local v2, bfR:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 126
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "="

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_0

    .line 127
    new-instance v8, Ljava/lang/Integer;

    const/4 v15, 0x0

    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 130
    .local v8, flag:Ljava/lang/Integer;
    const-string v15, "="

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    .line 131
    .local v14, themeStringID:Ljava/lang/String;
    const/4 v13, 0x0

    .line 133
    .local v13, themeName:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_1

    .line 134
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 135
    .local v12, resID:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v13

    .line 145
    .end local v12           #resID:I
    :cond_1
    :goto_1
    if-eqz v13, :cond_0

    .line 146
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->numberArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->displayArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 152
    .end local v8           #flag:Ljava/lang/Integer;
    .end local v13           #themeName:Ljava/lang/String;
    .end local v14           #themeStringID:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #bfR:Ljava/io/BufferedReader;
    .restart local v1       #bfR:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 153
    .end local v7           #fin:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v6       #fin:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    if-eqz v6, :cond_2

    .line 157
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 159
    :cond_2
    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 168
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->displayArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->displayArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    .line 170
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->displayArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v10, v15, :cond_9

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->displayArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v16, v10

    .line 170
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 137
    .end local v1           #bfR:Ljava/io/BufferedReader;
    .end local v6           #fin:Ljava/io/FileInputStream;
    .end local v10           #j:I
    .restart local v2       #bfR:Ljava/io/BufferedReader;
    .restart local v7       #fin:Ljava/io/FileInputStream;
    .restart local v8       #flag:Ljava/lang/Integer;
    .restart local v13       #themeName:Ljava/lang/String;
    .restart local v14       #themeStringID:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 138
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    const/4 v13, 0x0

    .line 143
    goto :goto_1

    .line 140
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v4

    .line 141
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 142
    const/4 v13, 0x0

    goto :goto_1

    .line 156
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #flag:Ljava/lang/Integer;
    .end local v13           #themeName:Ljava/lang/String;
    .end local v14           #themeStringID:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 157
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 159
    :cond_5
    if-eqz v2, :cond_6

    .line 160
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    move-object v1, v2

    .end local v2           #bfR:Ljava/io/BufferedReader;
    .restart local v1       #bfR:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 164
    .end local v7           #fin:Ljava/io/FileInputStream;
    .restart local v6       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 162
    .end local v1           #bfR:Ljava/io/BufferedReader;
    .end local v6           #fin:Ljava/io/FileInputStream;
    .restart local v2       #bfR:Ljava/io/BufferedReader;
    .restart local v7       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 163
    .local v5, e2:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .end local v2           #bfR:Ljava/io/BufferedReader;
    .restart local v1       #bfR:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 166
    .end local v7           #fin:Ljava/io/FileInputStream;
    .restart local v6       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 162
    .end local v5           #e2:Ljava/lang/Exception;
    .local v4, e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 163
    .restart local v5       #e2:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 155
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 156
    :goto_5
    if-eqz v6, :cond_7

    .line 157
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 159
    :cond_7
    if-eqz v1, :cond_8

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 164
    :cond_8
    :goto_6
    throw v15

    .line 162
    :catch_5
    move-exception v5

    .line 163
    .restart local v5       #e2:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 173
    .end local v5           #e2:Ljava/lang/Exception;
    .restart local v10       #j:I
    :cond_9
    invoke-static {}, Landroid/content/res/Configuration;->getJrdTheme2FromProp()I

    move-result v3

    .line 174
    .local v3, currentThemeId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    array-length v15, v15

    if-le v3, v15, :cond_a

    .line 175
    const/4 v3, 0x0

    .line 177
    :cond_a
    if-eqz v3, :cond_b

    .line 178
    add-int/lit8 v3, v3, -0x1

    .line 180
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    aget-object v15, v15, v3

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurThemeString:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurThemeString:Ljava/lang/String;

    if-eqz v15, :cond_c

    .line 183
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    array-length v15, v15

    if-ge v9, v15, :cond_c

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurThemeString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 185
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurrentPosition:I

    .line 191
    .end local v3           #currentThemeId:I
    .end local v9           #i:I
    .end local v10           #j:I
    :cond_c
    return-void

    .line 183
    .restart local v3       #currentThemeId:I
    .restart local v9       #i:I
    .restart local v10       #j:I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 155
    .end local v3           #currentThemeId:I
    .end local v6           #fin:Ljava/io/FileInputStream;
    .end local v9           #i:I
    .end local v10           #j:I
    .restart local v7       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v15

    move-object v6, v7

    .end local v7           #fin:Ljava/io/FileInputStream;
    .restart local v6       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #bfR:Ljava/io/BufferedReader;
    .end local v6           #fin:Ljava/io/FileInputStream;
    .restart local v2       #bfR:Ljava/io/BufferedReader;
    .restart local v7       #fin:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v1, v2

    .end local v2           #bfR:Ljava/io/BufferedReader;
    .restart local v1       #bfR:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fin:Ljava/io/FileInputStream;
    .restart local v6       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .line 152
    :catch_6
    move-exception v4

    goto/16 :goto_2

    .end local v6           #fin:Ljava/io/FileInputStream;
    .restart local v7       #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v6, v7

    .end local v7           #fin:Ljava/io/FileInputStream;
    .restart local v6       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "JrdthemeSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    new-instance v0, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;-><init>(Lcom/android/jrdsettings/JrdthemeSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    .line 104
    invoke-virtual {p0}, Lcom/android/jrdsettings/JrdthemeSettings;->initThemes()V

    .line 105
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v5, 0x65

    .line 219
    iget v2, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurrentPosition:I

    if-eq v2, p3, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeEntries:[Ljava/lang/String;

    aget-object v0, v2, p3

    .line 221
    .local v0, choosedThemeString:Ljava/lang/String;
    const-string v2, "JrdthemeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurThemeString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurThemeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", choosedThemeString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurThemeString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    iput-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurThemeString:Ljava/lang/String;

    .line 224
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, msg:Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iput v5, v1, Landroid/os/Message;->what:I

    .line 227
    iget-object v2, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iput p3, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mCurrentPosition:I

    .line 234
    .end local v0           #choosedThemeString:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 110
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeList:Landroid/widget/ListView;

    .line 111
    iget-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/jrdsettings/JrdthemeSettings;->getListItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/jrdsettings/JrdthemeSettings$ThemeAdapter;-><init>(Lcom/android/jrdsettings/JrdthemeSettings;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mThemeList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    return-void
.end method

.method public writeThemePreference(Ljava/lang/Object;)V
    .locals 8
    .parameter "objValue"

    .prologue
    const/16 v7, 0x66

    .line 239
    const-string v4, "persist.sys.jrdtheme"

    iget-object v5, p0, Lcom/android/jrdsettings/JrdthemeSettings;->numberArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->updateTheme2Path()Z

    move-result v2

    .line 241
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 242
    const-string v4, "JrdthemeSettings"

    const-string v5, "update theme2 path Error!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 248
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 249
    .local v3, themeCurConfig:Landroid/content/res/Configuration;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setJrdTheme2(I)V

    .line 250
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 251
    const-string v4, "JrdthemeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG set successfully, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v3           #themeCurConfig:Landroid/content/res/Configuration;
    :goto_0
    iget-object v4, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    iget-object v4, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/JrdthemeSettings;->mSwitchThemeDialoghandler:Lcom/android/jrdsettings/JrdthemeSettings$SwitchThemeDialogHandler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "JrdthemeSettings"

    const-string v5, "Unable to retrieve theme type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
