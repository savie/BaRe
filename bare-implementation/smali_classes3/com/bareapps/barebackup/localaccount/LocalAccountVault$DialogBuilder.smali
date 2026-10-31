.class final Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DialogBuilder"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->delegate:Ljava/lang/Object;

    .line 1132
    return-void
.end method

.method private varargs call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;"
        }
    .end annotation

    .line 1136
    :try_start_0
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1137
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->delegate:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    return-object p0

    .line 1139
    :catchall_0
    move-exception p1

    .line 1140
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unable to configure account dialog"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 4

    .line 1167
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "setCancelable"

    invoke-direct {p0, p1, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 4

    .line 1149
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "setMessage"

    invoke-direct {p0, p1, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 5

    .line 1162
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "setNegativeButton"

    invoke-direct {p0, p1, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 5

    .line 1157
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "setPositiveButton"

    invoke-direct {p0, p1, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 4

    .line 1145
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "setTitle"

    invoke-direct {p0, p1, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 4

    .line 1153
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "setView"

    invoke-direct {p0, p1, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method show()V
    .locals 3

    .line 1171
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "show"

    invoke-direct {p0, v2, v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    .line 1172
    return-void
.end method
