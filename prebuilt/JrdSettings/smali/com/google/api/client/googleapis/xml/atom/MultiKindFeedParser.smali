.class public final Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;
.super Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;
.source "MultiKindFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final kindToEntryClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;)V
    .locals 1
    .parameter "namespaceDictionary"
    .parameter "parser"
    .parameter "inputStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;,"Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser<TT;>;"
    .local p4, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->kindToEntryClassMap:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public static varargs create(Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;
    .locals 4
    .parameter "response"
    .parameter "namespaceDictionary"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 107
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, entryClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 109
    .local v0, content:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/xml/atom/Atom;->checkContentType(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 111
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 112
    new-instance v2, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;

    invoke-direct {v2, p1, v1, v0, p2}, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;)V

    .line 114
    .local v2, result:Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;,"Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser<TT;>;"
    invoke-virtual {v2, p3}, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->setEntryClasses([Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2

    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #result:Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;,"Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser<TT;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
.end method


# virtual methods
.method protected parseEntryInternal()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;,"Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 81
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v5, "kind"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, kind:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->kindToEntryClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 83
    .local v0, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognized kind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_0
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, result:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V

    .line 88
    return-object v3
.end method

.method public varargs setEntryClasses([Ljava/lang/Class;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;,"Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser<TT;>;"
    .local p1, entryClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v6, p1

    .line 60
    .local v6, numEntries:I
    iget-object v5, p0, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->kindToEntryClassMap:Ljava/util/HashMap;

    .line 61
    .local v5, kindToEntryClassMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 62
    aget-object v1, p1, v3

    .line 63
    .local v1, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v7

    .line 64
    .local v7, typeInfo:Lcom/google/api/client/util/ClassInfo;
    const-string v8, "@gd:kind"

    invoke-virtual {v7, v8}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 65
    .local v2, field:Ljava/lang/reflect/Field;
    if-nez v2, :cond_0

    .line 66
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing @gd:kind field for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 68
    :cond_0
    invoke-static {v1}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, entry:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    .local v4, kind:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 71
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing value for @gd:kind field in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 74
    :cond_1
    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v0           #entry:Ljava/lang/Object;
    .end local v1           #entryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v4           #kind:Ljava/lang/String;
    .end local v7           #typeInfo:Lcom/google/api/client/util/ClassInfo;
    :cond_2
    return-void
.end method
