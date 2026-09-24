.class public final synthetic Lfg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ldc6;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lhx5;

.field public final synthetic d:Lox0;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Ldc6;Ljava/lang/String;Lhx5;Lox0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfg5;->a:Ldc6;

    .line 5
    .line 6
    iput-object p2, p0, Lfg5;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lfg5;->c:Lhx5;

    .line 9
    .line 10
    iput-object p4, p0, Lfg5;->d:Lox0;

    .line 11
    .line 12
    iput-boolean p5, p0, Lfg5;->e:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lfg5;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    sget v0, Lpg5;->n:I

    .line 2
    .line 3
    new-instance v1, Lwf8;

    .line 4
    .line 5
    iget-object v0, p0, Lfg5;->c:Lhx5;

    .line 6
    .line 7
    iget v4, v0, Lhx5;->i:I

    .line 8
    .line 9
    iget-object v0, v0, Lhx5;->g:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-boolean v2, p0, Lfg5;->e:Z

    .line 12
    .line 13
    iget-boolean v3, p0, Lfg5;->f:Z

    .line 14
    .line 15
    invoke-static {v0, v2, v3}, Ly51;->c(Ljava/util/Map;ZZ)Lv64$c;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object v2, p0, Lfg5;->a:Ldc6;

    .line 20
    .line 21
    iget-object v3, p0, Lfg5;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lfg5;->d:Lox0;

    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Lwf8;-><init>(Ldc6;Ljava/lang/String;ILox0;Lv64$c;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method
