.class public Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;
.implements Lcom/google/api/client/util/ObjectParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/UrlEncodedParser$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "application/x-www-form-urlencoded"

    invoke-direct {p0, v0}, Lcom/google/api/client/http/UrlEncodedParser;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static builder()Lcom/google/api/client/http/UrlEncodedParser$Builder;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/google/api/client/http/UrlEncodedParser$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/UrlEncodedParser$Builder;-><init>()V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 23
    .parameter "content"
    .parameter "data"

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 137
    .local v6, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v6}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v5

    .line 138
    .local v5, classInfo:Lcom/google/api/client/util/ClassInfo;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 139
    .local v8, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    const-class v21, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v21, p1

    check-cast v21, Lcom/google/api/client/util/GenericData;

    move-object/from16 v11, v21

    .line 141
    .local v11, genericData:Lcom/google/api/client/util/GenericData;
    :goto_1
    const-class v21, Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v21, p1

    check-cast v21, Ljava/util/Map;

    move-object/from16 v14, v21

    .line 142
    .local v14, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_2
    new-instance v4, Lcom/google/api/client/util/ArrayValueMap;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 143
    .local v4, arrayValueMap:Lcom/google/api/client/util/ArrayValueMap;
    const/4 v9, 0x0

    .line 144
    .local v9, cur:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 145
    .local v12, length:I
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 146
    .local v16, nextEquals:I
    :goto_3
    if-ge v9, v12, :cond_d

    .line 148
    const/16 v21, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 149
    .local v3, amp:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_1

    .line 150
    move v3, v12

    .line 154
    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, name:Ljava/lang/String;
    add-int/lit8 v21, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, stringValue:Ljava/lang/String;
    const/16 v21, 0x3d

    add-int/lit8 v22, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 162
    :goto_4
    invoke-static {v15}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 164
    invoke-virtual {v5, v15}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v10

    .line 165
    .local v10, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v10, :cond_a

    .line 166
    invoke-virtual {v10}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v20

    .line 168
    .local v20, type:Ljava/lang/reflect/Type;
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 170
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v17

    .line 172
    .local v17, rawArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 203
    .end local v17           #rawArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v20           #type:Ljava/lang/reflect/Type;
    :cond_2
    :goto_5
    add-int/lit8 v9, v3, 0x1

    .line 204
    goto :goto_3

    .line 139
    .end local v3           #amp:I
    .end local v4           #arrayValueMap:Lcom/google/api/client/util/ArrayValueMap;
    .end local v9           #cur:I
    .end local v10           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v11           #genericData:Lcom/google/api/client/util/GenericData;
    .end local v12           #length:I
    .end local v14           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #nextEquals:I
    .end local v18           #stringValue:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 141
    .restart local v11       #genericData:Lcom/google/api/client/util/GenericData;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 159
    .restart local v3       #amp:I
    .restart local v4       #arrayValueMap:Lcom/google/api/client/util/ArrayValueMap;
    .restart local v9       #cur:I
    .restart local v12       #length:I
    .restart local v14       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v16       #nextEquals:I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 160
    .restart local v15       #name:Ljava/lang/String;
    const-string v18, ""

    .restart local v18       #stringValue:Ljava/lang/String;
    goto :goto_4

    .line 174
    .restart local v10       #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .restart local v20       #type:Ljava/lang/reflect/Type;
    :cond_6
    move-object/from16 v0, v20

    invoke-static {v8, v0}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/lang/Iterable;

    invoke-static/range {v21 .. v22}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 178
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 179
    .local v7, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v7, :cond_7

    .line 180
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v7

    .line 181
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v7}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :cond_7
    const-class v21, Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    .line 184
    .local v19, subFieldType:Ljava/lang/reflect/Type;
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 183
    .end local v19           #subFieldType:Ljava/lang/reflect/Type;
    :cond_8
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v19

    goto :goto_6

    .line 187
    .end local v7           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 189
    .end local v20           #type:Ljava/lang/reflect/Type;
    :cond_a
    if-eqz v14, :cond_2

    .line 192
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 193
    .local v13, listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_b

    .line 194
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v13       #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_c

    .line 196
    invoke-virtual {v11, v15, v13}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    :cond_b
    :goto_7
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 198
    :cond_c
    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 205
    .end local v3           #amp:I
    .end local v10           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v13           #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #stringValue:Ljava/lang/String;
    :cond_d
    invoke-virtual {v4}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    goto/16 :goto_0
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "valueType"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 210
    .local v0, resolved:Ljava/lang/reflect/Type;
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .parameter "charset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    .local p3, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 267
    .local v0, r:Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .parameter "charset"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 272
    .local v0, r:Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter "reader"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    instance-of v1, p2, Ljava/lang/Class;

    const-string v2, "dataType has to be of type Class<?>"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 286
    check-cast p2, Ljava/lang/Class;

    .end local p2
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, newInstance:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    return-object v0
.end method
