.class public Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/remotesecurity/json/JSONObject$1;,
        Lcom/android/jrdsettings/remotesecurity/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject$Null;-><init>(Lcom/android/jrdsettings/remotesecurity/json/JSONObject$1;)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/android/jrdsettings/remotesecurity/json/JSONObject;[Ljava/lang/String;)V
    .locals 3
    .parameter "jo"
    .parameter "names"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 167
    :try_start_0
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;)V
    .locals 4
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    .line 189
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 235
    .local v0, c:C
    .local v1, key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 193
    .end local v0           #c:C
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v0

    .line 194
    .restart local v0       #c:C
    sparse-switch v0, :sswitch_data_0

    .line 201
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 202
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v0

    .line 210
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_3

    .line 212
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 227
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 240
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 197
    .end local v1           #key:Ljava/lang/String;
    :sswitch_0
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 217
    .restart local v1       #key:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 219
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 231
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 238
    .end local v1           #key:Ljava/lang/String;
    :sswitch_2
    return-void

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 227
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "bean"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 288
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->populateMap(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .parameter "object"
    .parameter "names"

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>()V

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 306
    .local v0, c:Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 308
    aget-object v2, p2, v1

    .line 311
    .local v2, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 313
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
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
    .line 330
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .parameter "map"

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    .line 255
    if-eqz p1, :cond_0

    .line 257
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 258
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    .local v0, e:Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/util/Map$Entry;
    .end local v1           #i:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    :cond_0
    const-string v0, "null"

    .line 423
    :cond_1
    :goto_0
    return-object v0

    .line 411
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, s:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 414
    :goto_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNames(Lcom/android/jrdsettings/remotesecurity/json/JSONObject;)[Ljava/lang/String;
    .locals 5
    .parameter "jo"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->length()I

    move-result v2

    .line 582
    .local v2, length:I
    if-nez v2, :cond_1

    .line 584
    const/4 v3, 0x0

    .line 594
    :cond_0
    return-object v3

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 587
    .local v0, i:Ljava/util/Iterator;
    new-array v3, v2, [Ljava/lang/String;

    .line 588
    .local v3, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 589
    .local v1, j:I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 604
    if-nez p0, :cond_1

    .line 620
    :cond_0
    return-object v4

    .line 608
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 609
    .local v2, klass:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 610
    .local v0, fields:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .line 611
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 615
    new-array v4, v3, [Ljava/lang/String;

    .line 616
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 618
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 744
    if-nez p0, :cond_0

    .line 746
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    invoke-static {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 752
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, s:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 755
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 764
    :cond_2
    return-object v0
.end method

.method private populateMap(Ljava/lang/Object;)V
    .locals 12
    .parameter "bean"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 978
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 982
    .local v3, klass:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_0

    move v1, v9

    .line 984
    .local v1, includeSuperClass:Z
    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 986
    .local v5, methods:[Ljava/lang/reflect/Method;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_9

    .line 990
    :try_start_0
    aget-object v4, v5, v0

    .line 991
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 993
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 994
    .local v6, name:Ljava/lang/String;
    const-string v2, ""

    .line 995
    .local v2, key:Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 997
    const-string v8, "getClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "getDeclaringClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1000
    :cond_1
    const-string v2, ""

    .line 1011
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_4

    .line 1015
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 1017
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1025
    :cond_3
    :goto_3
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1027
    .local v7, result:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-static {v7}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 984
    .end local v0           #i:I
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    .line 1004
    .restart local v0       #i:I
    .restart local v2       #key:Ljava/lang/String;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #name:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1007
    :cond_7
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1009
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1019
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_3

    .line 1035
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #name:Ljava/lang/String;
    :cond_9
    return-void

    .line 1031
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "string"

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 1201
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1203
    :cond_0
    const-string v6, "\"\""

    .line 1261
    :goto_0
    return-object v6

    .line 1207
    :cond_1
    const/4 v1, 0x0

    .line 1209
    .local v1, c:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1210
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1213
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1214
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1216
    move v0, v1

    .line 1217
    .local v0, b:C
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1218
    sparse-switch v1, :sswitch_data_0

    .line 1248
    const/16 v6, 0x20

    if-lt v1, v6, :cond_3

    const/16 v6, 0x80

    if-lt v1, v6, :cond_2

    const/16 v6, 0xa0

    if-lt v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x2000

    if-lt v1, v6, :cond_5

    const/16 v6, 0x2100

    if-ge v1, v6, :cond_5

    .line 1251
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, t:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    .end local v5           #t:Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1222
    :sswitch_0
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1223
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1226
    :sswitch_1
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_4

    .line 1228
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1230
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1233
    :sswitch_2
    const-string v6, "\\b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1236
    :sswitch_3
    const-string v6, "\\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1239
    :sswitch_4
    const-string v6, "\\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1242
    :sswitch_5
    const-string v6, "\\f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1245
    :sswitch_6
    const-string v6, "\\r"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1256
    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1260
    .end local v0           #b:C
    :cond_6
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1261
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1218
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "s"

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1294
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1358
    .end local p0
    .local v0, b:C
    :cond_0
    :goto_0
    return-object p0

    .line 1298
    .end local v0           #b:C
    .restart local p0
    :cond_1
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1300
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1302
    :cond_2
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1304
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1306
    :cond_3
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1308
    sget-object p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 1320
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1321
    .restart local v0       #b:C
    if-lt v0, v7, :cond_5

    const/16 v2, 0x39

    if-le v0, v2, :cond_6

    :cond_5
    if-eq v0, v6, :cond_6

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    .line 1323
    :cond_6
    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_8

    .line 1328
    :cond_7
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 1330
    :catch_0
    move-exception v2

    .line 1336
    :cond_8
    const/16 v2, 0x2e

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_9

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_9

    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_a

    .line 1339
    :cond_9
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 1343
    :cond_a
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v1, myLong:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 1346
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v2

    goto/16 :goto_0

    :cond_b
    move-object p0, v1

    .line 1350
    goto/16 :goto_0

    .line 1354
    .end local v1           #myLong:Ljava/lang/Long;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method static testValidity(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1368
    if-eqz p0, :cond_3

    .line 1370
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1372
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 1380
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1382
    :cond_2
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :cond_3
    return-void
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1558
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1560
    :cond_0
    const-string v1, "null"

    .line 1600
    :goto_0
    return-object v1

    .line 1562
    :cond_1
    instance-of v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONString;

    if-eqz v2, :cond_3

    .line 1567
    :try_start_0
    check-cast p0, Lcom/android/jrdsettings/remotesecurity/json/JSONString;

    .end local p0
    invoke-interface {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1573
    .local v1, o:Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1575
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 1569
    .end local v1           #o:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1571
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    invoke-direct {v2, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1577
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #o:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value from toJSONString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1579
    .end local v1           #o:Ljava/lang/String;
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 1581
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1583
    .restart local p0
    :cond_4
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_5

    instance-of v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-nez v2, :cond_5

    instance-of v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1586
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1588
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1590
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v2, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1592
    .restart local p0
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1594
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v2, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1596
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1598
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1600
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1620
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1622
    :cond_0
    const-string v1, "null"

    .line 1667
    .end local p0
    :goto_0
    return-object v1

    .line 1626
    .restart local p0
    :cond_1
    :try_start_0
    instance-of v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONString;

    if-eqz v2, :cond_2

    .line 1628
    move-object v0, p0

    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONString;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 1629
    .local v1, o:Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1631
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1635
    .end local v1           #o:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1638
    :cond_2
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 1640
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1642
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 1644
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1646
    :cond_4
    instance-of v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-eqz v2, :cond_5

    .line 1648
    check-cast p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1650
    .restart local p0
    :cond_5
    instance-of v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1652
    check-cast p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1654
    .restart local p0
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1656
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v2, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1658
    .restart local p0
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1660
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v2, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1663
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1665
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1667
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "object"

    .prologue
    .line 1686
    if-nez p0, :cond_1

    .line 1688
    :try_start_0
    sget-object p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 1726
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1690
    .restart local p0
    :cond_1
    instance-of v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONString;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Character;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Float;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1701
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 1703
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_0

    .line 1705
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1707
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 1709
    :cond_3
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 1711
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v3

    goto :goto_0

    .line 1713
    .restart local p0
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1714
    .local v1, objectPackage:Ljava/lang/Package;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1716
    .local v2, objectPackageName:Ljava/lang/String;
    :goto_1
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "javax."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1720
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1714
    .end local v2           #objectPackageName:Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto :goto_1

    .line 1722
    .restart local v2       #objectPackageName:Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto/16 :goto_0

    .line 1724
    .end local v1           #objectPackage:Ljava/lang/Package;
    .end local v2           #objectPackageName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1726
    .local v0, exception:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 351
    instance-of v1, p2, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    move-result-object p2

    .end local p2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 362
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 354
    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v1, :cond_2

    .line 356
    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    goto :goto_0

    .line 360
    .restart local v0       #o:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    goto :goto_0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 382
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 393
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 384
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v1, :cond_1

    .line 386
    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    goto :goto_0

    .line 390
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 438
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 454
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

    .line 457
    :cond_0
    const/4 v1, 0x0

    .line 462
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return v1

    .line 459
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

    .line 462
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 464
    :cond_3
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 480
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

    .line 483
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 503
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_0
    return v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not an int."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v1, :cond_0

    .line 526
    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 528
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-eqz v1, :cond_0

    .line 545
    check-cast v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 547
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 564
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public increment(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 657
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 659
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 684
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 663
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 665
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    goto :goto_0

    .line 667
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 669
    check-cast v0, Ljava/lang/Long;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;J)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    goto :goto_0

    .line 671
    .restart local v0       #value:Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 673
    check-cast v0, Ljava/lang/Double;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;D)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    goto :goto_0

    .line 675
    .restart local v0       #value:Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 677
    check-cast v0, Ljava/lang/Float;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;D)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    goto :goto_0

    .line 681
    .restart local v0       #value:Ljava/lang/Object;
    :cond_4
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to increment ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 696
    sget-object v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 3

    .prologue
    .line 727
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    .line 728
    .local v0, ja:Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 729
    .local v1, keys:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .end local v0           #ja:Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    :cond_1
    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 774
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 803
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 807
    .end local p2
    :goto_0
    return p2

    .line 805
    .restart local p2
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 822
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 839
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 845
    :goto_0
    return-wide v2

    .line 840
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/Double;

    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v2, p2

    .line 845
    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 877
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 881
    .end local p2
    :goto_0
    return p2

    .line 879
    .restart local p2
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optJSONArray(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 2
    .parameter "key"

    .prologue
    .line 895
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 896
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

.method public optJSONObject(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 2
    .parameter "key"

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 910
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

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 924
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 941
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 945
    .end local p2
    :goto_0
    return-wide p2

    .line 943
    .restart local p2
    :catch_0
    move-exception v0

    .line 945
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 959
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 973
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_0
    return-object p2
.end method

.method public put(Ljava/lang/String;D)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1075
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1076
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1090
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1104
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1134
    if-nez p1, :cond_0

    .line 1136
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_0
    if-eqz p2, :cond_1

    .line 1140
    invoke-static {p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1141
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    :goto_0
    return-object p0

    .line 1145
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1061
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1062
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1117
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1118
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1047
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1048
    return-object p0

    .line 1047
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1161
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1163
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1165
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1169
    :cond_1
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .locals 0
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1184
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1186
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 1188
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1283
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Lcom/android/jrdsettings/remotesecurity/json/JSONArray;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    .locals 3
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1399
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1401
    :cond_0
    const/4 v1, 0x0

    .line 1408
    :cond_1
    return-object v1

    .line 1403
    :cond_2
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>()V

    .line 1404
    .local v1, ja:Lcom/android/jrdsettings/remotesecurity/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1406
    invoke-virtual {p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->put(Ljava/lang/Object;)Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1427
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1428
    .local v1, keys:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1432
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1434
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1436
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1437
    .local v2, o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1438
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1439
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1444
    .end local v1           #keys:Ljava/util/Iterator;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 1446
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 1441
    .restart local v1       #keys:Ljava/util/Iterator;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1442
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1
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
    .line 1464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 10
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1483
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->length()I

    move-result v2

    .line 1484
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1486
    const-string v6, "{}"

    .line 1532
    :goto_0
    return-object v6

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 1489
    .local v1, keys:Ljava/util/Iterator;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v5, sb:Ljava/lang/StringBuffer;
    add-int v3, p2, p1

    .line 1492
    .local v3, newindent:I
    if-ne v2, v7, :cond_3

    .line 1494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1495
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1497
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1531
    .end local v4           #o:Ljava/lang/Object;
    :cond_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1532
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1516
    .local v0, j:I
    .restart local v4       #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1517
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1518
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1501
    .end local v0           #j:I
    .end local v4           #o:Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1504
    .restart local v4       #o:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 1506
    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1512
    :goto_1
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 1514
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1510
    .end local v0           #j:I
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1522
    .end local v4           #o:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 1524
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1525
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_3
    if-ge v0, p2, :cond_1

    .line 1527
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1525
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
    .line 1743
    const/4 v0, 0x0

    .line 1744
    .local v0, b:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1745
    .local v3, keys:Ljava/util/Iterator;
    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1747
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1749
    if-eqz v0, :cond_0

    .line 1751
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1753
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1754
    .local v2, k:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1755
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1756
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1757
    .local v4, v:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    if-eqz v5, :cond_1

    .line 1759
    check-cast v4, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 1769
    :goto_1
    const/4 v0, 0x1

    .line 1770
    goto :goto_0

    .line 1761
    .restart local v4       #v:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    if-eqz v5, :cond_2

    .line 1763
    check-cast v4, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    .end local v4           #v:Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1774
    .end local v2           #k:Ljava/lang/Object;
    .end local v3           #keys:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1776
    .local v1, exception:Ljava/io/IOException;
    new-instance v5, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    invoke-direct {v5, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1767
    .end local v1           #exception:Ljava/io/IOException;
    .restart local v2       #k:Ljava/lang/Object;
    .restart local v3       #keys:Ljava/util/Iterator;
    .restart local v4       #v:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1771
    .end local v2           #k:Ljava/lang/Object;
    .end local v4           #v:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1772
    return-object p1
.end method
