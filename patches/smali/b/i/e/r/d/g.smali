.class public Lb/i/e/r/d/g;
.super Ljava/lang/Object;
.source "DetectionResultColumn.java"


# instance fields
.field public final a:Lb/i/e/r/d/c;

.field public final b:[Lb/i/e/r/d/d;


# direct methods
.method public constructor <init>(Lb/i/e/r/d/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/i/e/r/d/c;

    invoke-direct {v0, p1}, Lb/i/e/r/d/c;-><init>(Lb/i/e/r/d/c;)V

    iput-object v0, p0, Lb/i/e/r/d/g;->a:Lb/i/e/r/d/c;

    .line 3
    iget v0, p1, Lb/i/e/r/d/c;->i:I

    .line 4
    iget p1, p1, Lb/i/e/r/d/c;->h:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 5
    new-array p1, v0, [Lb/i/e/r/d/d;

    iput-object p1, p0, Lb/i/e/r/d/g;->b:[Lb/i/e/r/d/d;

    return-void
.end method


# virtual methods
.method public final a(I)Lb/i/e/r/d/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/i/e/r/d/g;->b:[Lb/i/e/r/d/d;

    .line 2
    iget-object v1, p0, Lb/i/e/r/d/g;->a:Lb/i/e/r/d/c;

    .line 3
    iget v1, v1, Lb/i/e/r/d/c;->h:I

    sub-int v1, p1, v1

    .line 4
    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x1

    :goto_e
    const/4 v1, 0x5

    if-ge v0, v1, :cond_30

    .line 5
    iget-object v1, p0, Lb/i/e/r/d/g;->a:Lb/i/e/r/d/c;

    .line 6
    iget v1, v1, Lb/i/e/r/d/c;->h:I

    sub-int v1, p1, v1

    sub-int v2, v1, v0

    if-ltz v2, :cond_22

    .line 7
    iget-object v3, p0, Lb/i/e/r/d/g;->b:[Lb/i/e/r/d/d;

    aget-object v2, v3, v2

    if-eqz v2, :cond_22

    return-object v2

    :cond_22
    add-int/2addr v1, v0

    .line 8
    iget-object v2, p0, Lb/i/e/r/d/g;->b:[Lb/i/e/r/d/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 9
    aget-object v1, v2, v1

    if-eqz v1, :cond_2d

    return-object v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/e/r/d/g;->a:Lb/i/e/r/d/c;

    .line 2
    iget v0, v0, Lb/i/e/r/d/c;->h:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 2
    :try_start_5
    iget-object v1, p0, Lb/i/e/r/d/g;->b:[Lb/i/e/r/d/d;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v4, v2, :cond_48

    aget-object v6, v1, v4

    const/4 v7, 0x1

    if-nez v6, :cond_23

    const-string v6, "%3d:    |   %n"

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v8

    goto :goto_45

    :cond_23
    const-string v8, "%3d: %3d|%3d%n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v3

    .line 5
    iget v5, v6, Lb/i/e/r/d/d;->e:I

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    const/4 v5, 0x2

    .line 7
    iget v6, v6, Lb/i/e/r/d/d;->d:I

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v10

    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 9
    :cond_48
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_50

    .line 10
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1

    :catchall_50
    move-exception v1

    .line 11
    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v2

    .line 12
    :try_start_53
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v2
.end method
