.class public Lcom/google/api/client/xml/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/xml/Xml$CustomizeParser;
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE:Ljava/lang/String; = null

.field static final TEXT_CONTENT:Ljava/lang/String; = "text()"

.field private static factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string v1, "application/xml"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->setCharsetParameter(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/xml/Xml;->MEDIA_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    return-void
.end method

.method public static createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/google/api/client/xml/Xml;->getParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public static createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/google/api/client/xml/Xml;->getParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "isAttribute"
    .parameter "alias"
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 508
    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 518
    .end local p3
    :goto_0
    return-object p3

    .line 511
    .restart local p3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 512
    .local v0, buf:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 513
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    :cond_1
    const-string v1, ""

    if-eq p1, v1, :cond_2

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private static declared-synchronized getParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 67
    const-class v1, Lcom/google/api/client/xml/Xml;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 70
    sget-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 72
    :cond_0
    sget-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .parameter "stringValue"
    .parameter "field"
    .parameter "valueType"
    .parameter
    .parameter "destination"
    .parameter "genericXml"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/xml/GenericXml;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    .local p6, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    if-nez p5, :cond_0

    if-eqz p6, :cond_1

    .line 130
    :cond_0
    if-nez p1, :cond_2

    .line 131
    :goto_0
    invoke-static {p2, p3, p0}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, value:Ljava/lang/Object;
    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/google/api/client/xml/Xml;->setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 134
    .end local v0           #value:Ljava/lang/Object;
    :cond_1
    return-void

    .line 130
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_0
.end method

.method public static parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V
    .locals 6
    .parameter "parser"
    .parameter "destination"
    .parameter "namespaceDictionary"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, context:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    .line 218
    return-void
.end method

.method private static parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z
    .locals 50
    .parameter "parser"
    .parameter
    .parameter "destination"
    .parameter "valueType"
    .parameter "namespaceDictionary"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Lcom/google/api/client/xml/Xml$CustomizeParser;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 233
    .local p1, context:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/google/api/client/xml/GenericXml;

    if-eqz v3, :cond_3

    move-object/from16 v3, p2

    check-cast v3, Lcom/google/api/client/xml/GenericXml;

    move-object v8, v3

    .line 235
    .local v8, genericXml:Lcom/google/api/client/xml/GenericXml;
    :goto_0
    if-nez v8, :cond_4

    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4

    const-class v3, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v9, v3

    .line 237
    .local v9, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    if-nez v9, :cond_0

    if-nez p2, :cond_5

    :cond_0
    const/16 v33, 0x0

    .line 239
    .local v33, classInfo:Lcom/google/api/client/util/ClassInfo;
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-nez v3, :cond_1

    .line 240
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 242
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/api/client/xml/Xml;->parseNamespacesForElement(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    .line 244
    if-eqz v8, :cond_2

    .line 245
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/google/api/client/xml/GenericXml;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 246
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v45

    .line 247
    .local v45, name:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v46

    .line 248
    .local v46, namespace:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceAliasForUriErrorOnUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 249
    .local v26, alias:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .end local v45           #name:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v45

    iput-object v0, v8, Lcom/google/api/client/xml/GenericXml;->name:Ljava/lang/String;

    .line 252
    .end local v26           #alias:Ljava/lang/String;
    .end local v46           #namespace:Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_9

    .line 253
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v30

    .line 254
    .local v30, attributeCount:I
    const/16 v39, 0x0

    .local v39, i:I
    :goto_4
    move/from16 v0, v39

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 256
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v31

    .line 257
    .local v31, attributeName:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v32

    .line 258
    .local v32, attributeNamespace:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    const-string v29, ""

    .line 260
    .local v29, attributeAlias:Ljava/lang/String;
    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-static {v3, v0, v1, v2}, Lcom/google/api/client/xml/Xml;->getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, fieldName:Ljava/lang/String;
    if-nez v33, :cond_8

    const/4 v4, 0x0

    .line 262
    .local v4, field:Ljava/lang/reflect/Field;
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v3 .. v10}, Lcom/google/api/client/xml/Xml;->parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 254
    add-int/lit8 v39, v39, 0x1

    goto :goto_4

    .line 233
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v8           #genericXml:Lcom/google/api/client/xml/GenericXml;
    .end local v9           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10           #fieldName:Ljava/lang/String;
    .end local v29           #attributeAlias:Ljava/lang/String;
    .end local v30           #attributeCount:I
    .end local v31           #attributeName:Ljava/lang/String;
    .end local v32           #attributeNamespace:Ljava/lang/String;
    .end local v33           #classInfo:Lcom/google/api/client/util/ClassInfo;
    .end local v39           #i:I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 235
    .restart local v8       #genericXml:Lcom/google/api/client/xml/GenericXml;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 237
    .restart local v9       #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v33

    goto/16 :goto_2

    .line 249
    .restart local v26       #alias:Ljava/lang/String;
    .restart local v33       #classInfo:Lcom/google/api/client/util/ClassInfo;
    .restart local v45       #name:Ljava/lang/String;
    .restart local v46       #namespace:Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    goto :goto_3

    .line 258
    .end local v26           #alias:Ljava/lang/String;
    .end local v45           #name:Ljava/lang/String;
    .end local v46           #namespace:Ljava/lang/String;
    .restart local v30       #attributeCount:I
    .restart local v31       #attributeName:Ljava/lang/String;
    .restart local v32       #attributeNamespace:Ljava/lang/String;
    .restart local v39       #i:I
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceAliasForUriErrorOnUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    goto :goto_5

    .line 261
    .restart local v10       #fieldName:Ljava/lang/String;
    .restart local v29       #attributeAlias:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    goto :goto_6

    .line 273
    .end local v10           #fieldName:Ljava/lang/String;
    .end local v29           #attributeAlias:Ljava/lang/String;
    .end local v30           #attributeCount:I
    .end local v31           #attributeName:Ljava/lang/String;
    .end local v32           #attributeNamespace:Ljava/lang/String;
    .end local v39           #i:I
    :cond_9
    new-instance v27, Lcom/google/api/client/util/ArrayValueMap;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 274
    .local v27, arrayValueMap:Lcom/google/api/client/util/ArrayValueMap;
    const/16 v42, 0x0

    .line 276
    .local v42, isStopped:Z
    :cond_a
    :goto_7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .line 277
    .local v35, event:I
    packed-switch v35, :pswitch_data_0

    goto :goto_7

    .line 279
    :pswitch_0
    const/16 v42, 0x1

    .line 502
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    .line 503
    return v42

    .line 282
    :pswitch_1
    if-eqz p5, :cond_b

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Lcom/google/api/client/xml/Xml$CustomizeParser;->stopAfterEndTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v42, 0x1

    .line 284
    :goto_9
    goto :goto_8

    .line 282
    :cond_b
    const/16 v42, 0x0

    goto :goto_9

    .line 287
    :pswitch_2
    if-eqz p2, :cond_a

    .line 288
    if-nez v33, :cond_c

    const/4 v4, 0x0

    .line 289
    .restart local v4       #field:Ljava/lang/reflect/Field;
    :goto_a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    const-string v18, "text()"

    move-object v12, v4

    move-object/from16 v13, p3

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v11 .. v18}, Lcom/google/api/client/xml/Xml;->parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_7

    .line 288
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_c
    const-string v3, "text()"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    goto :goto_a

    .line 300
    :pswitch_3
    if-eqz p5, :cond_d

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Lcom/google/api/client/xml/Xml$CustomizeParser;->stopBeforeStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 302
    const/16 v42, 0x1

    .line 303
    goto :goto_8

    .line 305
    :cond_d
    if-nez p2, :cond_10

    .line 306
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v6}, Lcom/google/api/client/xml/Xml;->parseTextContentForElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ZLjava/lang/reflect/Type;)Ljava/lang/Object;

    .line 495
    :cond_e
    :goto_b
    if-nez v42, :cond_f

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 496
    :cond_f
    const/16 v42, 0x1

    .line 497
    goto :goto_8

    .line 309
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/api/client/xml/Xml;->parseNamespacesForElement(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    .line 310
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v46

    .line 311
    .restart local v46       #namespace:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceAliasForUriErrorOnUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 312
    .restart local v26       #alias:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-static {v3, v0, v1, v6}, Lcom/google/api/client/xml/Xml;->getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 313
    .restart local v10       #fieldName:Ljava/lang/String;
    if-nez v33, :cond_14

    const/4 v4, 0x0

    .line 314
    .restart local v4       #field:Ljava/lang/reflect/Field;
    :goto_c
    if-nez v4, :cond_15

    move-object/from16 v38, p3

    .line 315
    .local v38, fieldType:Ljava/lang/reflect/Type;
    :goto_d
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v38

    .line 318
    move-object/from16 v0, v38

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_16

    move-object/from16 v3, v38

    check-cast v3, Ljava/lang/Class;

    move-object/from16 v36, v3

    .line 319
    .local v36, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_e
    move-object/from16 v0, v38

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_11

    move-object/from16 v3, v38

    .line 320
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v36

    .line 322
    :cond_11
    invoke-static/range {v38 .. v38}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v41

    .line 324
    .local v41, isArray:Z
    if-nez v4, :cond_17

    if-nez v9, :cond_17

    if-nez v8, :cond_17

    const/16 v40, 0x1

    .line 325
    .local v40, ignore:Z
    :goto_f
    if-nez v40, :cond_12

    invoke-static/range {v38 .. v38}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 326
    :cond_12
    const/16 v43, 0x1

    .line 327
    .local v43, level:I
    :cond_13
    :goto_10
    if-eqz v43, :cond_e

    .line 328
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_10

    .line 330
    :pswitch_4
    const/16 v42, 0x1

    .line 331
    goto/16 :goto_8

    .line 313
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v36           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v38           #fieldType:Ljava/lang/reflect/Type;
    .end local v40           #ignore:Z
    .end local v41           #isArray:Z
    .end local v43           #level:I
    :cond_14
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    goto :goto_c

    .line 314
    .restart local v4       #field:Ljava/lang/reflect/Field;
    :cond_15
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v38

    goto :goto_d

    .line 318
    .restart local v38       #fieldType:Ljava/lang/reflect/Type;
    :cond_16
    const/16 v36, 0x0

    goto :goto_e

    .line 324
    .restart local v36       #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v41       #isArray:Z
    :cond_17
    const/16 v40, 0x0

    goto :goto_f

    .line 333
    .restart local v40       #ignore:Z
    .restart local v43       #level:I
    :pswitch_5
    add-int/lit8 v43, v43, 0x1

    .line 334
    goto :goto_10

    .line 336
    :pswitch_6
    add-int/lit8 v43, v43, -0x1

    .line 337
    goto :goto_10

    .line 339
    :pswitch_7
    if-nez v40, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v43

    if-ne v0, v3, :cond_13

    .line 340
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v3 .. v10}, Lcom/google/api/client/xml/Xml;->parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_10

    .line 352
    .end local v43           #level:I
    :cond_18
    if-eqz v38, :cond_19

    if-eqz v36, :cond_23

    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 355
    :cond_19
    invoke-static/range {v36 .. v36}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v13

    .line 356
    .local v13, mapValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 357
    .local v34, contextSize:I
    if-eqz v38, :cond_1a

    .line 358
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_1a
    if-eqz v38, :cond_1d

    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static/range {v38 .. v38}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 362
    .local v14, subValueType:Ljava/lang/reflect/Type;
    :goto_11
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    .line 363
    invoke-static/range {v11 .. v16}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v42

    .line 369
    if-eqz v38, :cond_1b

    .line 370
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    :cond_1b
    if-eqz v9, :cond_1e

    .line 375
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Collection;

    .line 376
    .local v44, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v44, :cond_1c

    .line 377
    new-instance v44, Ljava/util/ArrayList;

    .end local v44           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    .restart local v44       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v0, v44

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_1c
    move-object/from16 v0, v44

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 360
    .end local v14           #subValueType:Ljava/lang/reflect/Type;
    .end local v44           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1d
    const/4 v14, 0x0

    goto :goto_11

    .line 381
    .restart local v14       #subValueType:Ljava/lang/reflect/Type;
    :cond_1e
    if-eqz v4, :cond_21

    .line 383
    invoke-static {v4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v37

    .line 384
    .local v37, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_20

    .line 387
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Collection;

    .line 388
    .restart local v44       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v44, :cond_1f

    .line 389
    new-instance v44, Ljava/util/ArrayList;

    .end local v44           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    .restart local v44       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    :cond_1f
    move-object/from16 v0, v44

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 395
    .end local v44           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_20
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .end local v37           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    :cond_21
    move-object/from16 v28, p2

    .line 399
    check-cast v28, Lcom/google/api/client/xml/GenericXml;

    .line 401
    .local v28, atom:Lcom/google/api/client/xml/GenericXml;
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/google/api/client/xml/GenericXml;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Collection;

    .line 402
    .restart local v44       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v44, :cond_22

    .line 403
    new-instance v44, Ljava/util/ArrayList;

    .end local v44           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .restart local v44       #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v0, v28

    move-object/from16 v1, v44

    invoke-virtual {v0, v10, v1}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    :cond_22
    move-object/from16 v0, v44

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 408
    .end local v13           #mapValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #subValueType:Ljava/lang/reflect/Type;
    .end local v28           #atom:Lcom/google/api/client/xml/GenericXml;
    .end local v34           #contextSize:I
    .end local v44           #list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_23
    if-nez v41, :cond_24

    const-class v3, Ljava/util/Collection;

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 410
    :cond_24
    invoke-static {v4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v37

    .line 411
    .restart local v37       #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    const/16 v17, 0x0

    .line 412
    .local v17, elementValue:Ljava/lang/Object;
    if-eqz v41, :cond_27

    invoke-static/range {v38 .. v38}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v49

    .line 415
    .local v49, subFieldType:Ljava/lang/reflect/Type;
    :goto_12
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v47

    .line 417
    .local v47, rawArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v49

    .line 418
    move-object/from16 v0, v49

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_28

    move-object/from16 v3, v49

    check-cast v3, Ljava/lang/Class;

    move-object/from16 v48, v3

    .line 420
    .local v48, subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_13
    move-object/from16 v0, v49

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_25

    move-object/from16 v3, v49

    .line 421
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v48

    .line 423
    :cond_25
    invoke-static/range {v49 .. v49}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 424
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v49

    invoke-static {v0, v1, v3, v2}, Lcom/google/api/client/xml/Xml;->parseTextContentForElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ZLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    .line 457
    .end local v17           #elementValue:Ljava/lang/Object;
    :cond_26
    :goto_14
    if-eqz v41, :cond_2f

    .line 459
    if-nez v4, :cond_2e

    .line 460
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    move-object/from16 v2, v17

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 412
    .end local v47           #rawArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v48           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v49           #subFieldType:Ljava/lang/reflect/Type;
    .restart local v17       #elementValue:Ljava/lang/Object;
    :cond_27
    invoke-static/range {v38 .. v38}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v49

    goto :goto_12

    .line 418
    .restart local v47       #rawArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v49       #subFieldType:Ljava/lang/reflect/Type;
    :cond_28
    const/16 v48, 0x0

    goto :goto_13

    .line 425
    .restart local v48       #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_29
    if-eqz v49, :cond_2a

    if-eqz v48, :cond_2d

    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-static {v0, v3}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 427
    :cond_2a
    invoke-static/range {v48 .. v48}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v17

    .line 428
    .local v17, elementValue:Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 429
    .restart local v34       #contextSize:I
    if-eqz v49, :cond_2b

    .line 430
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2b
    if-eqz v49, :cond_2c

    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static/range {v49 .. v49}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 435
    .restart local v14       #subValueType:Ljava/lang/reflect/Type;
    :goto_15
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v18, v14

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 436
    invoke-static/range {v15 .. v20}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v42

    .line 442
    if-eqz v49, :cond_26

    .line 443
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_14

    .line 432
    .end local v14           #subValueType:Ljava/lang/reflect/Type;
    :cond_2c
    const/4 v14, 0x0

    goto :goto_15

    .line 446
    .end local v34           #contextSize:I
    .local v17, elementValue:Ljava/lang/Object;
    :cond_2d
    invoke-static/range {v47 .. v47}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    .line 447
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 448
    .restart local v34       #contextSize:I
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const/16 v18, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-static/range {v15 .. v20}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v42

    .line 455
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_14

    .line 462
    .end local v17           #elementValue:Ljava/lang/Object;
    .end local v34           #contextSize:I
    :cond_2e
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    move-object/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 467
    :cond_2f
    if-nez v4, :cond_31

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_16
    check-cast v5, Ljava/util/Collection;

    .line 469
    .local v5, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v5, :cond_30

    .line 470
    invoke-static/range {v38 .. v38}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v5

    move-object v6, v4

    move-object/from16 v7, p2

    .line 471
    invoke-static/range {v5 .. v10}, Lcom/google/api/client/xml/Xml;->setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 478
    :cond_30
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 467
    .end local v5           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_31
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_16

    .line 482
    .end local v37           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v47           #rawArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v48           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v49           #subFieldType:Ljava/lang/reflect/Type;
    :cond_32
    invoke-static/range {v36 .. v36}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    .line 483
    .local v20, value:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 484
    .restart local v34       #contextSize:I
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const/16 v21, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    invoke-static/range {v18 .. v23}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v42

    .line 491
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v21, v4

    move-object/from16 v22, p2

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 492
    invoke-static/range {v20 .. v25}, Lcom/google/api/client/xml/Xml;->setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static parseNamespacesForElement(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/api/client/xml/XmlNamespaceDictionary;)V
    .locals 16
    .parameter "parser"
    .parameter "namespaceDictionary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 578
    .local v3, eventType:I
    const/4 v11, 0x2

    if-ne v3, v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    const-string v12, "expected start of XML element, but got something else (event type %s)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 580
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 581
    .local v2, depth:I
    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v7

    .line 582
    .local v7, nsStart:I
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v6

    .line 583
    .local v6, nsEnd:I
    move v4, v7

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 584
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, namespace:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 587
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v9

    .line 588
    .local v9, prefix:Ljava/lang/String;
    if-nez v9, :cond_1

    const-string v8, ""

    .line 590
    .local v8, originalAlias:Ljava/lang/String;
    :goto_2
    move-object v1, v8

    .line 591
    .local v1, alias:Ljava/lang/String;
    const/4 v10, 0x1

    .line 592
    .local v10, suffix:I
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 593
    add-int/lit8 v10, v10, 0x1

    .line 594
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 578
    .end local v1           #alias:Ljava/lang/String;
    .end local v2           #depth:I
    .end local v4           #i:I
    .end local v5           #namespace:Ljava/lang/String;
    .end local v6           #nsEnd:I
    .end local v7           #nsStart:I
    .end local v8           #originalAlias:Ljava/lang/String;
    .end local v9           #prefix:Ljava/lang/String;
    .end local v10           #suffix:I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .restart local v2       #depth:I
    .restart local v4       #i:I
    .restart local v5       #namespace:Ljava/lang/String;
    .restart local v6       #nsEnd:I
    .restart local v7       #nsStart:I
    .restart local v9       #prefix:Ljava/lang/String;
    :cond_1
    move-object v8, v9

    .line 588
    goto :goto_2

    .line 596
    .restart local v1       #alias:Ljava/lang/String;
    .restart local v8       #originalAlias:Ljava/lang/String;
    .restart local v10       #suffix:I
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 583
    .end local v1           #alias:Ljava/lang/String;
    .end local v8           #originalAlias:Ljava/lang/String;
    .end local v9           #prefix:Ljava/lang/String;
    .end local v10           #suffix:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    .end local v5           #namespace:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static parseTextContentForElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ZLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter "parser"
    .parameter
    .parameter "ignoreTextContent"
    .parameter "textContentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;Z",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    .local p1, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    const/4 v1, 0x0

    .line 525
    .local v1, result:Ljava/lang/Object;
    const/4 v0, 0x1

    .line 526
    .end local v1           #result:Ljava/lang/Object;
    .local v0, level:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 527
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 529
    :pswitch_0
    const/4 v0, 0x0

    .line 530
    goto :goto_0

    .line 532
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 533
    goto :goto_0

    .line 535
    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    .line 536
    goto :goto_0

    .line 538
    :pswitch_3
    if-nez p2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 539
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p1, v2}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 544
    .end local v1           #result:Ljava/lang/Object;
    :cond_1
    return-object v1

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
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
    .line 548
    .local p1, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 549
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 550
    :cond_0
    const-string v0, "INF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 565
    :goto_0
    return-object v0

    .line 553
    :cond_1
    const-string v0, "-INF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x10

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 557
    :cond_2
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 558
    :cond_3
    const-string v0, "INF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_4
    const-string v0, "-INF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_5
    invoke-static {p0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "field"
    .parameter "destination"
    .parameter "genericXml"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/xml/GenericXml;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 153
    invoke-static {p1, p2, p0}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    invoke-virtual {p3, p5, p0}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p4, p5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toStringOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "element"

    .prologue
    .line 104
    new-instance v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toStringOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
