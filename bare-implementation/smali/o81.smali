.class public final Lo81;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Loe;

.field public b:Lxt1;

.field public c:Lwo1;

.field public d:Lwo1;

.field public e:Lwo1;

.field public f:Lwo1;

.field public g:Lwo1;

.field public h:Lwo1;

.field public i:Lx44;

.field public j:Lno6;

.field public k:Lpu5;


# direct methods
.method public static a(Ljava/lang/reflect/Method;)Lwo1;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v1, v3, :cond_0

    .line 9
    .line 10
    const-class v1, Ljava/util/Map;

    .line 11
    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v0, Lwo1;

    .line 28
    .line 29
    invoke-direct {v0, p0, v2}, Lwo1;-><init>(Ljava/lang/reflect/Method;Z)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
