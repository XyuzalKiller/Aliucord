.class public final Ld0/e0/p/d/l0/b$c;
.super Ljava/lang/Object;
.source "AnnotationConstructorCaller.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/e0/p/d/l0/b;->createAnnotationInstance(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lkotlin/Lazy;

.field public final synthetic c:Lkotlin/Lazy;

.field public final synthetic d:Ld0/e0/p/d/l0/b$a;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lkotlin/Lazy;Lkotlin/reflect/KProperty;Lkotlin/Lazy;Lkotlin/reflect/KProperty;Ld0/e0/p/d/l0/b$a;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Ld0/e0/p/d/l0/b$c;->a:Ljava/lang/Class;

    iput-object p2, p0, Ld0/e0/p/d/l0/b$c;->b:Lkotlin/Lazy;

    iput-object p4, p0, Ld0/e0/p/d/l0/b$c;->c:Lkotlin/Lazy;

    iput-object p6, p0, Ld0/e0/p/d/l0/b$c;->d:Ld0/e0/p/d/l0/b$a;

    iput-object p7, p0, Ld0/e0/p/d/l0/b$c;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string p1, "method"

    .line 1
    invoke-static {p2, p1}, Ld0/z/d/m;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_49

    .line 2
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x69e9ad94

    if-eq v0, v1, :cond_3a

    const v1, 0x8cdac1b

    if-eq v0, v1, :cond_2b

    const v1, 0x5620bf09

    if-eq v0, v1, :cond_20

    goto :goto_49

    :cond_20
    const-string v0, "annotationType"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object p1, p0, Ld0/e0/p/d/l0/b$c;->a:Ljava/lang/Class;

    goto :goto_74

    :cond_2b
    const-string v0, "hashCode"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object p1, p0, Ld0/e0/p/d/l0/b$c;->c:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_74

    :cond_3a
    const-string v0, "toString"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object p1, p0, Ld0/e0/p/d/l0/b$c;->b:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_74

    :cond_49
    :goto_49
    const-string v0, "equals"

    .line 6
    invoke-static {p1, v0}, Ld0/z/d/m;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    if-eqz p3, :cond_66

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    iget-object p1, p0, Ld0/e0/p/d/l0/b$c;->d:Ld0/e0/p/d/l0/b$a;

    invoke-static {p3}, Ld0/t/k;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ld0/e0/p/d/l0/b$a;->invoke(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_74

    .line 7
    :cond_66
    iget-object v0, p0, Ld0/e0/p/d/l0/b$c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object p2, p0, Ld0/e0/p/d/l0/b$c;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_74
    return-object p1

    .line 8
    :cond_75
    new-instance p1, Ld0/e0/p/d/a0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (args: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8c

    goto :goto_8f

    :cond_8c
    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    :goto_8f
    invoke-static {p3}, Ld0/t/k;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld0/e0/p/d/a0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
