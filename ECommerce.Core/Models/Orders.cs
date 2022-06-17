using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECommerce.Core.Models
{
    public class Orders : BaseEntity
    {
        public long Id { get; set; }
        public string CustomerOrderNo { get; set; }
        public string FromAddress { get; set; }
        public string ToAddress { get; set; }
        public int Amount { get; set; }
        public int AmountTypeId { get; set; }
        public AmountTypes AmountType { get; set; }
        public decimal Weight { get; set; }
        public int WeightUnitId { get; set; }
        public WeightUnits WeightUnit { get; set; }
        public int MaterialId { get; set; }
        public Materials Material { get; set; }
        public string Note { get; set; }
        public int OrderStatusId { get; set; }
        public OrderStatuses OrderStatus { get; set; }
    }
}
