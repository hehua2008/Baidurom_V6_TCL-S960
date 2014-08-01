.class public Lcom/google/api/client/xml/XmlObjectParser;
.super Ljava/lang/Object;
.source "XmlObjectParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# instance fields
.field private final namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V
    .locals 1
    .parameter "namespaceDictionary"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v0, p0, Lcom/google/api/client/xml/XmlObjectParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 61
    return-void
.end method

.method private readObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter "parser"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    instance-of v1, p2, Ljava/lang/Class;

    const-string v2, "dataType has to be of Class<?>"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    check-cast p2, Ljava/lang/Class;

    .end local p2
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/api/client/xml/XmlObjectParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public final getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/client/xml/XmlObjectParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
    .line 81
    .local p3, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/xml/XmlObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .parameter "charset"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 89
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v2, p3}, Lcom/google/api/client/xml/XmlObjectParser;->readObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 92
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 94
    .local v1, exception:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3
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
    .line 103
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/xml/XmlObjectParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .parameter "reader"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 110
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 111
    invoke-direct {p0, v2, p2}, Lcom/google/api/client/xml/XmlObjectParser;->readObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-object v3

    .line 113
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 115
    .local v1, exception:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 116
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    throw v3
.end method
