.class public Lb/f/j/a/c/c$b;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/j/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/facebook/cache/common/CacheKey;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/CacheKey;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/f/j/a/c/c$b;->a:Lcom/facebook/cache/common/CacheKey;

    .line 3
    iput p2, p0, Lb/f/j/a/c/c$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lb/f/j/a/c/c$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 2
    check-cast p1, Lb/f/j/a/c/c$b;

    .line 3
    iget v1, p0, Lb/f/j/a/c/c$b;->b:I

    iget v3, p1, Lb/f/j/a/c/c$b;->b:I

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Lb/f/j/a/c/c$b;->a:Lcom/facebook/cache/common/CacheKey;

    iget-object p1, p1, Lb/f/j/a/c/c$b;->a:Lcom/facebook/cache/common/CacheKey;

    .line 4
    invoke-interface {v1, p1}, Lcom/facebook/cache/common/CacheKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/f/j/a/c/c$b;->a:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheKey;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Lb/f/j/a/c/c$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lb/c/a/a0/d;->h2(Ljava/lang/Object;)Lb/f/d/d/i;

    move-result-object v0

    iget-object v1, p0, Lb/f/j/a/c/c$b;->a:Lcom/facebook/cache/common/CacheKey;

    const-string v2, "imageCacheKey"

    .line 2
    invoke-virtual {v0, v2, v1}, Lb/f/d/d/i;->c(Ljava/lang/String;Ljava/lang/Object;)Lb/f/d/d/i;

    .line 3
    iget v1, p0, Lb/f/j/a/c/c$b;->b:I

    const-string v2, "frameIndex"

    .line 4
    invoke-virtual {v0, v2, v1}, Lb/f/d/d/i;->a(Ljava/lang/String;I)Lb/f/d/d/i;

    .line 5
    invoke-virtual {v0}, Lb/f/d/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
