.class public final synthetic Ldg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldv7;


# instance fields
.field public final synthetic a:Lfg8;

.field public final synthetic b:Loe0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lfg8;Loe0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldg8;->a:Lfg8;

    .line 5
    .line 6
    iput-object p2, p0, Ldg8;->b:Loe0;

    .line 7
    .line 8
    iput p3, p0, Ldg8;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ldg8;->a:Lfg8;

    .line 2
    .line 3
    iget-object v0, v0, Lfg8;->d:Le41;

    .line 4
    .line 5
    iget v1, p0, Ldg8;->c:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object p0, p0, Ldg8;->b:Loe0;

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, v2}, Le41;->d(Loe0;IZ)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
