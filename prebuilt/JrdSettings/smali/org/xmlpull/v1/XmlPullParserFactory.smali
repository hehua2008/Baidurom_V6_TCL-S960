.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "XmlPullParserFactory.java"


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

.field static final referenceContextClass:Ljava/lang/Class;


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/Hashtable;

.field protected parserClasses:Ljava/util/Vector;

.field protected serializerClasses:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 41
    .local v0, f:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 76
    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-static {v0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 20
    .parameter "classNames"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 269
    sget-object p1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 272
    :cond_0
    const/4 v5, 0x0

    .line 274
    .local v5, classNamesLocation:Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "DEFAULT"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 276
    :cond_1
    :try_start_0
    const-string v17, "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 278
    .local v10, is:Ljava/io/InputStream;
    if-nez v10, :cond_2

    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v10           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17

    .line 281
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v15, sb:Ljava/lang/StringBuffer;
    :cond_3
    :goto_0
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 285
    .local v4, ch:I
    if-gez v4, :cond_5

    .line 289
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 291
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 296
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .end local v4           #ch:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :goto_1
    const/4 v8, 0x0

    .line 303
    .local v8, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v12, parserClasses:Ljava/util/Vector;
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 305
    .local v16, serializerClasses:Ljava/util/Vector;
    const/4 v13, 0x0

    .line 307
    .local v13, pos:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v13, v0, :cond_7

    .line 346
    if-nez v8, :cond_4

    .line 347
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    .end local v8           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-direct {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 349
    .restart local v8       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_4
    iput-object v12, v8, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 350
    move-object/from16 v0, v16

    iput-object v0, v8, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 351
    iput-object v5, v8, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 352
    return-object v8

    .line 286
    .end local v8           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12           #parserClasses:Ljava/util/Vector;
    .end local v13           #pos:I
    .end local v16           #serializerClasses:Ljava/util/Vector;
    .restart local v4       #ch:I
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v15       #sb:Ljava/lang/StringBuffer;
    :cond_5
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v4, v0, :cond_3

    .line 287
    int-to-char v0, v4

    move/from16 v17, v0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 298
    .end local v4           #ch:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :cond_6
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "parameter classNames to newInstance() that contained \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 308
    .restart local v8       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12       #parserClasses:Ljava/util/Vector;
    .restart local v13       #pos:I
    .restart local v16       #serializerClasses:Ljava/util/Vector;
    :cond_7
    const/16 v17, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 310
    .local v6, cut:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 311
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 314
    .local v3, candidate:Ljava/lang/Class;
    const/4 v9, 0x0

    .line 317
    .local v9, instance:Ljava/lang/Object;
    :try_start_3
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .line 323
    .end local v9           #instance:Ljava/lang/Object;
    :goto_3
    if-eqz v3, :cond_d

    .line 324
    const/4 v14, 0x0

    .line 325
    .local v14, recognized:Z
    instance-of v0, v9, Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 326
    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 327
    const/4 v14, 0x1

    .line 329
    :cond_9
    instance-of v0, v9, Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 330
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 331
    const/4 v14, 0x1

    .line 333
    :cond_a
    instance-of v0, v9, Lorg/xmlpull/v1/XmlPullParserFactory;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 334
    if-nez v8, :cond_b

    move-object v8, v9

    .line 335
    check-cast v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 337
    :cond_b
    const/4 v14, 0x1

    .line 339
    :cond_c
    if-nez v14, :cond_d

    .line 340
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "incompatible class: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 321
    .end local v14           #recognized:Z
    .restart local v9       #instance:Ljava/lang/Object;
    :catch_1
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    goto :goto_3

    .line 343
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #instance:Ljava/lang/Object;
    :cond_d
    add-int/lit8 v13, v6, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 105
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 106
    .local v0, value:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 132
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 158
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    if-nez v8, :cond_0

    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Factory initialization was incomplete - has not tried "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_0
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "No valid parser classes found in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 178
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v3, issues:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_2

    .line 202
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "could not create parser: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :cond_2
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 183
    .local v6, ppClass:Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xmlpull/v1/XmlPullParser;

    .line 188
    .local v5, pp:Lorg/xmlpull/v1/XmlPullParser;
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_4

    .line 195
    return-object v5

    .line 189
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, key:Ljava/lang/String;
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 191
    .local v7, value:Ljava/lang/Boolean;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 192
    const/4 v8, 0x1

    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #pp:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #value:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    if-nez v5, :cond_0

    .line 219
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Factory initialization incomplete - has not tried "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    :cond_0
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 223
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No valid serializer classes found in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v2, issues:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 248
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "could not create serializer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    :cond_2
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 232
    .local v3, ppClass:Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v4, ser:Lorg/xmlpull/v1/XmlSerializer;
    return-object v4

    .line 244
    .end local v4           #ser:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 3
    .parameter "awareness"

    .prologue
    .line 119
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public setValidating(Z)V
    .locals 3
    .parameter "validating"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method
