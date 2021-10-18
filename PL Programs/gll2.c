typedef struct gll
    {
       int tag;
       struct gll* next;
       char data;
       struct gll* dlink;
    } GLL;

GLL* generateList(char poly[])
{
    GLL* newNode = NULL, *first = NULL, *ptr = NULL;

    while (poly[i] != '\0')
    {
        if (poly[i] == ')')
        {
            return first;
        }
        else
        {
            if (poly[i] != ',')
            {
                if (poly[i] != '(')
                {
                    newNode = createNode(poly[i], 0);
                }
                else
                {
                    ++i;
                    newNode = createNode('#', 1);
                    newNode->dlink = generateList(poly);
                }
            }
        }
 if (first != NULL)
        {
            ptr = first;
            while (ptr->next != NULL)
            {
                ptr = ptr->next;
            }
            ptr->next = newNode;
        }
        else
        {
            first = newNode;
        }
        i++;
    }
    return first;
}

GLL* createNode(char value, int flag)
{
 GLL* newNode;

 newNode = (GLL *) malloc(sizeof(GLL)*1);

 newNode->data = value;
 newNode->dlink = NULL;

 newNode->tag = flag;
 newNode->next = NULL;

return newNode;
}