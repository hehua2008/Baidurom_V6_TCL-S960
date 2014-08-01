.class public Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;)V
    .locals 5
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 106
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v0

    .line 109
    .local v0, c:C
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 111
    const/16 v1, 0x5d

    .line 121
    .local v1, q:C
    :goto_0
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v2

    if-ne v2, v4, :cond_3

    .line 156
    :cond_0
    return-void

    .line 113
    .end local v1           #q:C
    :cond_1
    const/16 v2, 0x28

    if-ne v0, v2, :cond_2

    .line 115
    const/16 v1, 0x29

    .restart local v1       #q:C
    goto :goto_0

    .line 119
    .end local v1           #q:C
    :cond_2
    const-string v2, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 125
    .restart local v1       #q:C
    :cond_3
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 128
    :goto_1
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4

    .line 130
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 131
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_2
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v0

    .line 139
    sparse-switch v0, :sswitch_data_0

    .line 158
    const-string v2, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 136
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    goto :goto_1

    .line 151
    :sswitch_1
    if-eq v1, v0, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 203
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    const-string v3, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .parameter "collection"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 182
    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, o:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 227
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, o:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 252
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return v1

    .line 249
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    .end local v0           #o:Ljava/lang/Object;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 254
    :cond_3
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(I)D
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method

.method public getJSONArray(I)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 309
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-eqz v1, :cond_0

    .line 324
    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 326
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 362
    sget-object v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "separator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v1

    .line 376
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 380
    if-lez v0, :cond_0

    .line 382
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public length()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 407
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 441
    .end local p2
    :goto_0
    return p2

    .line 439
    .restart local p2
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2
    .parameter "index"

    .prologue
    .line 455
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 471
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 475
    .end local p2
    :goto_0
    return-wide p2

    .line 473
    .restart local p2
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optInt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 504
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 508
    .end local p2
    :goto_0
    return p2

    .line 506
    .restart local p2
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optJSONArray(I)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 2
    .parameter "index"

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 2
    .parameter "index"

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 535
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 548
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 567
    .end local p2
    :goto_0
    return-wide p2

    .line 565
    .restart local p2
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 581
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 595
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_0
    return-object p2
.end method

.method public put(D)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 631
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 632
    .local v0, d:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 634
    return-object p0
.end method

.method public put(I)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 645
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 646
    return-object p0
.end method

.method public put(ID)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 729
    return-object p0
.end method

.method public put(II)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 743
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 744
    return-object p0
.end method

.method public put(IJ)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 758
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 759
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 3
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-static {p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 792
    if-gez p1, :cond_0

    .line 794
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 808
    :goto_0
    return-object p0

    .line 802
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 804
    sget-object v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    goto :goto_1

    .line 806
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 712
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 713
    return-object p0
.end method

.method public put(ILjava/util/Map;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 774
    return-object p0
.end method

.method public put(IZ)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 697
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(ILjava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 698
    return-object p0

    .line 697
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 657
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 658
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 618
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 619
    return-object p0
.end method

.method public put(Ljava/util/Map;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 669
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 670
    return-object p0
.end method

.method public put(Z)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 1
    .parameter "value"

    .prologue
    .line 606
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 607
    return-object p0

    .line 606
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 820
    .local v0, o:Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 821
    return-object v0
.end method

.method public toJSONObject(Lcom/android/jrdsettings/remotesecurity/json/JSONArray;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 4
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 835
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 837
    :cond_0
    const/4 v1, 0x0

    .line 844
    :cond_1
    return-object v1

    .line 839
    :cond_2
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 840
    .local v1, jo:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 842
    invoke-virtual {p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 862
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 866
    :goto_0
    return-object v1

    .line 864
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "indentFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 883
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 8
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 898
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    .line 899
    .local v2, len:I
    if-nez v2, :cond_0

    .line 901
    const-string v5, "[]"

    .line 936
    :goto_0
    return-object v5

    .line 904
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 905
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 907
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 936
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 913
    :cond_2
    add-int v3, p2, p1

    .line 914
    .local v3, newindent:I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 915
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 917
    if-lez v0, :cond_3

    .line 919
    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    :cond_3
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 923
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 925
    :cond_4
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 929
    .end local v1           #j:I
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 930
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_1

    .line 932
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 6
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, b:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v3

    .line 955
    .local v3, len:I
    const/16 v5, 0x5b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 957
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 959
    if-eqz v0, :cond_0

    .line 961
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 963
    :cond_0
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 964
    .local v4, v:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-eqz v5, :cond_1

    .line 966
    check-cast v4, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 976
    :goto_1
    const/4 v0, 0x1

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .restart local v4       #v:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v5, :cond_2

    .line 970
    check-cast v4, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 981
    .end local v2           #i:I
    .end local v3           #len:I
    :catch_0
    move-exception v1

    .line 983
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    invoke-direct {v5, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 974
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #v:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 978
    .end local v4           #v:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 979
    return-object p1
.end method
