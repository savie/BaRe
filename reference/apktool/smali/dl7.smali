.class public final Ldl7;
.super Ljavax/el/VariableMapper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Lfl7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/el/VariableMapper;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lxs2;->a:Ljavax/el/ExpressionFactory;

    .line 5
    .line 6
    iget-object p1, p1, Lfl7;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Ljavax/el/ExpressionFactory;->createValueExpression(Ljava/lang/Object;Ljava/lang/Class;)Ljavax/el/ValueExpression;

    .line 13
    .line 14
    .line 15
    return-void
.end method
