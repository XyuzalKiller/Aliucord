.class public final Lg0/u;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# instance fields
.field public final transient n:[[B

.field public final transient o:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    const-string v0, "segments"

    invoke-static {p1, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokio/ByteString;->j:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->i()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lg0/u;->n:[[B

    iput-object p2, p0, Lg0/u;->o:[I

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/u;->u()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    goto :goto_21

    .line 1
    :cond_5
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_20

    check-cast p1, Lokio/ByteString;

    .line 2
    invoke-virtual {p1}, Lokio/ByteString;->j()I

    move-result v2

    invoke-virtual {p0}, Lg0/u;->j()I

    move-result v3

    if-ne v2, v3, :cond_20

    invoke-virtual {p0}, Lg0/u;->j()I

    move-result v2

    .line 3
    invoke-virtual {p0, v1, p1, v1, v2}, Lg0/u;->n(ILokio/ByteString;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/u;->u()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lokio/ByteString;
    .locals 6

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lg0/u;->n:[[B

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v1, v0, :cond_25

    .line 4
    iget-object v3, p0, Lg0/u;->o:[I

    add-int v4, v0, v1

    .line 5
    aget v4, v3, v4

    .line 6
    aget v3, v3, v1

    .line 7
    iget-object v5, p0, Lg0/u;->n:[[B

    .line 8
    aget-object v5, v5, v1

    sub-int v2, v3, v2

    .line 9
    invoke-virtual {p1, v5, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_e

    .line 10
    :cond_25
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v1, "digest.digest()"

    invoke-static {p1, v1}, Ld0/z/d/m;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lokio/ByteString;->l:I

    if-eqz v0, :cond_5

    goto :goto_2d

    .line 2
    :cond_5
    iget-object v0, p0, Lg0/u;->n:[[B

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_b
    if-ge v1, v0, :cond_2a

    .line 4
    iget-object v4, p0, Lg0/u;->o:[I

    add-int v5, v0, v1

    .line 5
    aget v5, v4, v5

    .line 6
    aget v4, v4, v1

    .line 7
    iget-object v6, p0, Lg0/u;->n:[[B

    .line 8
    aget-object v6, v6, v1

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    :goto_1c
    if-ge v5, v3, :cond_26

    mul-int/lit8 v2, v2, 0x1f

    .line 9
    aget-byte v7, v6, v5

    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_26
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_b

    .line 10
    :cond_2a
    iput v2, p0, Lokio/ByteString;->l:I

    move v0, v2

    :goto_2d
    return v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/u;->o:[I

    .line 2
    iget-object v1, p0, Lg0/u;->n:[[B

    .line 3
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/u;->u()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/u;->t()[B

    move-result-object v0

    return-object v0
.end method

.method public m(I)B
    .locals 7

    .line 1
    iget-object v0, p0, Lg0/u;->o:[I

    .line 2
    iget-object v1, p0, Lg0/u;->n:[[B

    .line 3
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lb/i/a/f/e/o/f;->B(JJJ)V

    .line 4
    invoke-static {p0, p1}, Lb/i/a/f/e/o/f;->a1(Lg0/u;I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    .line 5
    :cond_18
    iget-object v1, p0, Lg0/u;->o:[I

    add-int/lit8 v2, v0, -0x1

    .line 6
    aget v1, v1, v2

    .line 7
    :goto_1e
    iget-object v2, p0, Lg0/u;->o:[I

    .line 8
    iget-object v3, p0, Lg0/u;->n:[[B

    .line 9
    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 10
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public n(ILokio/ByteString;II)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_46

    .line 1
    invoke-virtual {p0}, Lg0/u;->j()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_10

    goto :goto_46

    :cond_10
    add-int/2addr p4, p1

    .line 2
    invoke-static {p0, p1}, Lb/i/a/f/e/o/f;->a1(Lg0/u;I)I

    move-result v1

    :goto_15
    if-ge p1, p4, :cond_45

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    .line 3
    :cond_1b
    iget-object v2, p0, Lg0/u;->o:[I

    add-int/lit8 v3, v1, -0x1

    .line 4
    aget v2, v2, v3

    .line 5
    :goto_21
    iget-object v3, p0, Lg0/u;->o:[I

    .line 6
    aget v4, v3, v1

    sub-int/2addr v4, v2

    .line 7
    iget-object v5, p0, Lg0/u;->n:[[B

    .line 8
    array-length v5, v5

    add-int/2addr v5, v1

    aget v3, v3, v5

    add-int/2addr v4, v2

    .line 9
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v3

    .line 10
    iget-object v3, p0, Lg0/u;->n:[[B

    .line 11
    aget-object v3, v3, v1

    .line 12
    invoke-virtual {p2, p3, v3, v2, v4}, Lokio/ByteString;->o(I[BII)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_46

    :cond_40
    add-int/2addr p3, v4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_45
    const/4 v0, 0x1

    :cond_46
    :goto_46
    return v0
.end method

.method public o(I[BII)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4c

    .line 1
    invoke-virtual {p0}, Lg0/u;->j()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4c

    if-ltz p3, :cond_4c

    .line 2
    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_16

    goto :goto_4c

    :cond_16
    add-int/2addr p4, p1

    .line 3
    invoke-static {p0, p1}, Lb/i/a/f/e/o/f;->a1(Lg0/u;I)I

    move-result v1

    :goto_1b
    if-ge p1, p4, :cond_4b

    if-nez v1, :cond_21

    const/4 v2, 0x0

    goto :goto_27

    .line 4
    :cond_21
    iget-object v2, p0, Lg0/u;->o:[I

    add-int/lit8 v3, v1, -0x1

    .line 5
    aget v2, v2, v3

    .line 6
    :goto_27
    iget-object v3, p0, Lg0/u;->o:[I

    .line 7
    aget v4, v3, v1

    sub-int/2addr v4, v2

    .line 8
    iget-object v5, p0, Lg0/u;->n:[[B

    .line 9
    array-length v5, v5

    add-int/2addr v5, v1

    aget v3, v3, v5

    add-int/2addr v4, v2

    .line 10
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v3

    .line 11
    iget-object v3, p0, Lg0/u;->n:[[B

    .line 12
    aget-object v3, v3, v1

    .line 13
    invoke-static {v3, v2, p2, p3, v4}, Lb/i/a/f/e/o/f;->h([BI[BII)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_4c

    :cond_46
    add-int/2addr p3, v4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_4b
    const/4 v0, 0x1

    :cond_4c
    :goto_4c
    return v0
.end method

.method public p()Lokio/ByteString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/u;->u()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->p()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg0/u;->n:[[B

    .line 2
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v1, v0, :cond_21

    .line 3
    iget-object v3, p0, Lg0/u;->o:[I

    add-int v4, v0, v1

    .line 4
    aget v4, v3, v4

    .line 5
    aget v3, v3, v1

    .line 6
    iget-object v5, p0, Lg0/u;->n:[[B

    .line 7
    aget-object v5, v5, v1

    sub-int v2, v3, v2

    .line 8
    invoke-virtual {p1, v5, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_a

    :cond_21
    return-void
.end method

.method public s(Lg0/e;II)V
    .locals 10

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p3, p2

    .line 1
    invoke-static {p0, p2}, Lb/i/a/f/e/o/f;->a1(Lg0/u;I)I

    move-result v0

    :goto_a
    if-ge p2, p3, :cond_52

    if-nez v0, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    .line 2
    :cond_10
    iget-object v1, p0, Lg0/u;->o:[I

    add-int/lit8 v2, v0, -0x1

    .line 3
    aget v1, v1, v2

    .line 4
    :goto_16
    iget-object v2, p0, Lg0/u;->o:[I

    .line 5
    aget v3, v2, v0

    sub-int/2addr v3, v1

    .line 6
    iget-object v4, p0, Lg0/u;->n:[[B

    .line 7
    array-length v4, v4

    add-int/2addr v4, v0

    aget v2, v2, v4

    add-int/2addr v3, v1

    .line 8
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p2

    sub-int v1, p2, v1

    add-int v6, v1, v2

    .line 9
    iget-object v1, p0, Lg0/u;->n:[[B

    .line 10
    aget-object v5, v1, v0

    .line 11
    new-instance v1, Lg0/s;

    add-int v7, v6, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lg0/s;-><init>([BIIZZ)V

    .line 12
    iget-object v2, p1, Lg0/e;->j:Lg0/s;

    if-nez v2, :cond_44

    .line 13
    iput-object v1, v1, Lg0/s;->g:Lg0/s;

    .line 14
    iput-object v1, v1, Lg0/s;->f:Lg0/s;

    .line 15
    iput-object v1, p1, Lg0/e;->j:Lg0/s;

    goto :goto_4e

    .line 16
    :cond_44
    iget-object v2, v2, Lg0/s;->g:Lg0/s;

    if-nez v2, :cond_4b

    invoke-static {}, Ld0/z/d/m;->throwNpe()V

    :cond_4b
    invoke-virtual {v2, v1}, Lg0/s;->b(Lg0/s;)Lg0/s;

    :goto_4e
    add-int/2addr p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 17
    :cond_52
    iget-wide p2, p1, Lg0/e;->k:J

    .line 18
    invoke-virtual {p0}, Lg0/u;->j()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 19
    iput-wide p2, p1, Lg0/e;->k:J

    return-void
.end method

.method public t()[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lg0/u;->j()I

    move-result v0

    .line 2
    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Lg0/u;->n:[[B

    .line 4
    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v2, v1, :cond_26

    .line 5
    iget-object v5, p0, Lg0/u;->o:[I

    add-int v6, v1, v2

    .line 6
    aget v6, v5, v6

    .line 7
    aget v5, v5, v2

    .line 8
    iget-object v7, p0, Lg0/u;->n:[[B

    .line 9
    aget-object v7, v7, v2

    sub-int v3, v5, v3

    add-int v8, v6, v3

    .line 10
    invoke-static {v7, v0, v4, v6, v8}, Ld0/t/j;->copyInto([B[BIII)[B

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_c

    :cond_26
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/u;->u()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lokio/ByteString;
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lg0/u;->t()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method
