.class public final Lb/i/a/c/x2/f0/e;
.super Ljava/lang/Object;
.source "XmpMotionPhotoDescriptionParser.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MotionPhoto"

    const-string v1, "GCamera:MotionPhoto"

    const-string v2, "Camera:MicroVideo"

    const-string v3, "GCamera:MicroVideo"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/i/a/c/x2/f0/e;->a:[Ljava/lang/String;

    const-string v0, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v1, "GCamera:MotionPhotoPresentationTimestampUs"

    const-string v2, "Camera:MicroVideoPresentationTimestampUs"

    const-string v3, "GCamera:MicroVideoPresentationTimestampUs"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/i/a/c/x2/f0/e;->b:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/i/a/c/x2/f0/e;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lb/i/a/c/x2/f0/b;
    .locals 25
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v1, "x:xmpmeta"

    .line 5
    invoke-static {v0, v1}, Lb/c/a/a0/d;->Y0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e9

    .line 6
    sget-object v2, Lb/i/b/b/p;->k:Lb/i/b/b/a;

    sget-object v2, Lb/i/b/b/h0;->l:Lb/i/b/b/p;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v4

    .line 7
    :cond_29
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "rdf:Description"

    .line 8
    invoke-static {v0, v8}, Lb/c/a/a0/d;->Y0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 9
    sget-object v2, Lb/i/a/c/x2/f0/e;->a:[Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_39
    const/4 v9, 0x1

    if-ge v8, v6, :cond_4c

    aget-object v10, v2, v8

    .line 10
    invoke-static {v0, v10}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4e

    .line 11
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v9, :cond_4c

    const/4 v2, 0x1

    goto :goto_51

    :cond_4c
    const/4 v2, 0x0

    goto :goto_51

    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :goto_51
    if-nez v2, :cond_54

    return-object v3

    .line 12
    :cond_54
    sget-object v2, Lb/i/a/c/x2/f0/e;->b:[Ljava/lang/String;

    array-length v6, v2

    const/4 v8, 0x0

    :goto_58
    if-ge v8, v6, :cond_6c

    aget-object v10, v2, v8

    .line 13
    invoke-static {v0, v10}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6e

    .line 14
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v2, v10, v12

    if-nez v2, :cond_71

    :cond_6c
    move-wide v10, v4

    goto :goto_71

    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 15
    :cond_71
    :goto_71
    sget-object v2, Lb/i/a/c/x2/f0/e;->c:[Ljava/lang/String;

    array-length v6, v2

    const/4 v8, 0x0

    :goto_75
    if-ge v8, v6, :cond_af

    aget-object v12, v2, v8

    .line 16
    invoke-static {v0, v12}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_ac

    .line 17
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 18
    new-instance v2, Lb/i/a/c/x2/f0/b$a;

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-string v19, "image/jpeg"

    const-string v20, "Primary"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lb/i/a/c/x2/f0/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v6, Lb/i/a/c/x2/f0/b$a;

    const-wide/16 v18, 0x0

    const-string v14, "video/mp4"

    const-string v15, "MotionPhoto"

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Lb/i/a/c/x2/f0/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 19
    sget-object v8, Lb/i/b/b/p;->k:Lb/i/b/b/a;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v7

    aput-object v6, v8, v9

    .line 20
    invoke-static {v8}, Lb/i/b/b/p;->m([Ljava/lang/Object;)Lb/i/b/b/p;

    move-result-object v2

    goto :goto_b3

    :cond_ac
    add-int/lit8 v8, v8, 0x1

    goto :goto_75

    .line 21
    :cond_af
    sget-object v2, Lb/i/b/b/p;->k:Lb/i/b/b/a;

    sget-object v2, Lb/i/b/b/h0;->l:Lb/i/b/b/p;

    :goto_b3
    move-wide v6, v10

    goto :goto_d6

    :cond_b5
    const-string v8, "Container:Directory"

    .line 22
    invoke-static {v0, v8}, Lb/c/a/a0/d;->Y0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    const-string v2, "Container"

    const-string v8, "Item"

    .line 23
    invoke-static {v0, v2, v8}, Lb/i/a/c/x2/f0/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lb/i/b/b/p;

    move-result-object v2

    goto :goto_d6

    :cond_c6
    const-string v8, "GContainer:Directory"

    .line 24
    invoke-static {v0, v8}, Lb/c/a/a0/d;->Y0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d6

    const-string v2, "GContainer"

    const-string v8, "GContainerItem"

    .line 25
    invoke-static {v0, v2, v8}, Lb/i/a/c/x2/f0/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lb/i/b/b/p;

    move-result-object v2

    .line 26
    :cond_d6
    :goto_d6
    invoke-static {v0, v1}, Lb/c/a/a0/d;->R0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e3

    return-object v3

    .line 28
    :cond_e3
    new-instance v0, Lb/i/a/c/x2/f0/b;

    invoke-direct {v0, v6, v7, v2}, Lb/i/a/c/x2/f0/b;-><init>(JLjava/util/List;)V

    return-object v0

    :cond_e9
    const-string v0, "Couldn\'t find xmp metadata"

    .line 29
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lb/i/b/b/p;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lb/i/b/b/p<",
            "Lb/i/a/c/x2/f0/b$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lb/i/b/b/p;->k:Lb/i/b/b/a;

    const/4 v3, 0x4

    const-string v4, "initialCapacity"

    .line 2
    invoke-static {v3, v4}, Lb/i/a/f/e/o/f;->A(ILjava/lang/String;)I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ":Item"

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":Directory"

    .line 4
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 5
    :cond_1d
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    invoke-static {v0, v4}, Lb/c/a/a0/d;->Y0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    const-string v6, ":Mime"

    .line 7
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":Semantic"

    .line 8
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":Length"

    .line 9
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":Padding"

    .line 10
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v0, v6}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-static {v0, v7}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-static {v0, v8}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v0, v9}, Lb/c/a/a0/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v11, :cond_7e

    if-nez v12, :cond_53

    goto :goto_7e

    .line 15
    :cond_53
    new-instance v8, Lb/i/a/c/x2/f0/b$a;

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_5e

    .line 16
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_5f

    :cond_5e
    move-wide v13, v9

    :goto_5f
    if-eqz v7, :cond_67

    .line 17
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v15, v6

    goto :goto_68

    :cond_67
    move-wide v15, v9

    :goto_68
    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lb/i/a/c/x2/f0/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    add-int/lit8 v6, v5, 0x1

    .line 18
    array-length v7, v3

    if-ge v7, v6, :cond_7a

    .line 19
    array-length v7, v3

    .line 20
    invoke-static {v7, v6}, Lb/i/b/b/n$b;->a(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 21
    :cond_7a
    aput-object v8, v3, v5

    move v5, v6

    goto :goto_81

    .line 22
    :cond_7e
    :goto_7e
    sget-object v0, Lb/i/b/b/h0;->l:Lb/i/b/b/p;

    return-object v0

    .line 23
    :cond_81
    :goto_81
    invoke-static {v0, v1}, Lb/c/a/a0/d;->R0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 24
    invoke-static {v3, v5}, Lb/i/b/b/p;->l([Ljava/lang/Object;I)Lb/i/b/b/p;

    move-result-object v0

    return-object v0
.end method
